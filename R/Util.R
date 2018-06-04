PrettyForm.function<-function(func){
  PrettyForm(as.expression(body(func)))
}

TeXForm.function<-function(func) TeXForm(as.expression(body(func)))

RForm<-function(y) UseMethod('RForm')
RForm.yacas<-function(y) return(parse(text=y[["text"]]))

