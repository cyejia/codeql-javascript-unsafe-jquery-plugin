import javascript

predicate isSource(DataFlow::Node source) {
  exists(DataFlow::FunctionNode plugin |
    plugin = jquery().getAPropertyRead("fn").getAPropertySource() and
    source = plugin.getParameter(plugin.getNumParameter() - 1)
  )
}

from DataFlow::Node node
where isSource(node)
select node
