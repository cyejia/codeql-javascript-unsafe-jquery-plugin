import javascript

from DataFlow::FunctionNode plugin
where plugin = jquery().getAPropertyRead("fn").getAPropertySource()
select plugin, plugin.getParameter(plugin.getNumParameter() - 1)