import javascript

predicate isSource(DataFlow::Node source) {
  exists(DataFlow::FunctionNode option |
    option = jquery().getAPropertyRead("fn").getAPropertySource() and
    source = option.getAParameter()
  )
}

from DataFlow::Node node
where isSource(node)
select node
