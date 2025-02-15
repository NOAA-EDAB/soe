
exp<- ecodata::exp_n %>% filter( !EPU == "MAB", 
                                 !EPU == "SS", 
                                   Season == "FALL", 
                                   str_detect(Var, 'AlbatrossSD|BigelowSD')) %>% 
    rename(VarSD = Var, 
         ValueSD = Value) 
exp2<- ecodata::exp_n %>% filter(!EPU == "MAB", 
                                 !EPU == "SS", 
                                 Season == "FALL", 
                                 Var %in% c("Albatross", "Bigelow"))   %>% 

  left_join(exp) %>% 
  mutate(upper = Value+ValueSD, 
         lower = Value - ValueSD)

exp2 %>% 
ggplot2::ggplot(aes(x = Time, y = Value, fill = Var)) +
  
  #Highlight last ten years
  ggplot2::annotate("rect", fill = shade.fill, alpha = shade.alpha,
      xmin = x.shade.min , xmax = x.shade.max ,
      ymin = -Inf, ymax = Inf) +

  ggplot2::geom_ribbon(data = exp2, aes(ymax = pmax(upper, 0), ymin = lower, x = Time),
              alpha = 0.5) +
  ggplot2::geom_line(size = lwd-0.5) +
  ggplot2::geom_point(size = pcex-0.5) +
  # scale_color_manual(values = series.col, aesthetics = "color")+
  #ggplot2::guides(color = FALSE) +
  #ggplot2::geom_hline(aes(yintercept = hline,
  #               group = Var),
  #           size = hline.size,
  #           alpha = hline.alpha,
  #           linetype = hline.lty)+
  ggplot2::facet_wrap(EPU~.,scales = "free_y", ncol = 2) +
  ggplot2::ggtitle("Expected Number of Species ")+
  #Axis and theme
  ggplot2::scale_x_continuous(breaks = seq(1965, 2015, by = 10), expand = c(0.01, 0.01)) +
  ggplot2::ylab("Expected N/tow") +
  ecodata::theme_facet()+
  ggplot2::theme(strip.text=element_text(hjust=0))

# exp2 %>% 
#   dplyr::filter(Time %in% c(max(Time), max(Time-1))) %>% 
#   group_by(EPU) %>% 
#   dplyr::summarise(m = mean(Value))
# 
# exp2 %>% 
#   dplyr::filter(Time %in% c(max(Time-2), max(Time-3),  max(Time-4))) %>% 
#   group_by(EPU) %>% 
#   dplyr::summarise(m= mean(Value))
