PrettyForm.function<-function(func){
  PrettyForm(as.expression(body(func)))
}

TeXForm.function<-function(func) TeXForm(as.expression(body(func)))


Sym<-function (...){
  if(!is.character(...)|missing(...)){
    assign(deparse(substitute(...)),Sym(paste(as.character(deparse(substitute(...))),'s',sep = '')),pos = .GlobalEnv)
  }else{
    args <- list(...)
    value <- if (length(args) > 1)
      paste("(", ..., ")")
    else paste(args[[1]])
    class(value) <- c("Sym", "character")
    value
  }
}


RForm<-function(y) UseMethod('RForm')
RForm.yacas<-function(y) return(parse(text=y[["text"]]))

