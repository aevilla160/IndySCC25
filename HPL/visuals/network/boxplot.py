import pandas as pd
from plotnine import *
import matplotlib.pyplot as plt

# Read the CSV file
data = pd.read_csv('performance-data.csv')

# Reshape data for easier plotting
metrics = ['Avg_Latency_us', 'P50_Tail_Lat_us', 'P90_Tail_Lat_us', 'P99_Tail_Lat_us']
melted_data = pd.melt(data, 
                      id_vars=['Size', 'Run', 'Type'],
                      value_vars=metrics,
                      var_name='Metric',
                      value_name='Latency')

# Clean up metric names for display
melted_data['Metric'] = melted_data['Metric'].map({
    'Avg_Latency_us': 'Average Latency',
    'P50_Tail_Lat_us': '50th Percentile',
    'P90_Tail_Lat_us': '90th Percentile',
    'P99_Tail_Lat_us': '99th Percentile'
})

# Convert Size to string for better x-axis labels
melted_data['Size'] = melted_data['Size'].astype(str)

# Create the plot
plot = (ggplot(melted_data, aes(x='Size', y='Latency', fill='Type'))
    + geom_boxplot(outlier_size=2)
    + facet_wrap('~ Metric', scales='free_y', ncol=2)
    + theme_bw()
    + labs(
        title='Latency Distribution by Message Size and Implementation Type',
        x='Message Size (bytes)',
        y='Latency (microseconds)',
        fill='Implementation Type'
    )
    + theme(
        figure_size=(15, 12),
        plot_title=element_text(size=14, face='bold'),
        axis_text_x=element_text(rotation=45, hjust=1),
        strip_text=element_text(size=12),
        legend_position='right'
    )
    + scale_fill_hue()
)

# Save the plot to a file
plot.save('latency_boxplots.png', dpi=300, bbox_inches='tight')

# If you want to display it as well
print(plot)