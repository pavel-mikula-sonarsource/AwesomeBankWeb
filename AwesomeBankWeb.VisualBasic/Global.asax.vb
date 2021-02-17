
Public Class MvcApplication
    Inherits HttpApplication

    Sub Application_Start()
        RouteTable.Routes.MapRoute(Nothing, "{Action}", New With {.Controller = "Home", .Action = "Index"})
    End Sub

End Class
