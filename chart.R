import(plotly)
import(modules)

export("get_tweet_location_chart")

# Setup styling and markings to use througout all charts
g <- list(
  projection = list(scale = 5),
  scope = 'usa',
  # projection = list(type = 'albers usa'),
  showland = TRUE,
  landcolor = toRGB("gray85"),
  countrywidth = 1,
  countrycolor = toRGB("white"),
  center = list(lon= 32.254, lat=48.515) #Kropy
)


footnote <- "Covid19 Tweets (Kaggle-Dataset); https://www.kaggle.com/gpreda/covid19-tweets"
annotation <- list(x = 1, y = 0, text = footnote, 
                   showarrow = F, xref='paper', yref='paper', 
                   xanchor='right', yanchor='auto', xshift=0, yshift=0,
                   font=list(size=10))

get_tweet_location_chart <- function(data) {
  fig <- plot_geo(data, sizes = c(1, 450))
  # fig <- add_markers(fig,
  #   x = ~lat, y = ~long, size = ~count, color=~count,  hoverinfo = "text", showlegend=T,
  #   text = ~paste(data$LOCATION, "<br />", data$count, " conflicts")
  # )
  fig <- add_markers(fig,
    x = ~long, y = ~lat
  )
  
  # fig <- layout(fig, title = 'Covid19 Tweet locations', geo = g, annotations = annotation)
  
  fig
}
