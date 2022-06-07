Blocks & Procs
- Blocks - code snippets contained by {} or do..end that are passed to methods
- Proc - objects that wrap blocks and allow us to call/invoke the block
- Defining a method parameter with an ampersand like &prc takes a block passed to the method and converts it into a proc so that it can be called within the method(prc.call)
    a method can only be invoked with one block, therefore there can only be one parameter with an ampersand(&)
- yield - passes any given block whatever we give to yield as an argument i.e. self[i]

Instance vs Class Methods
- methods that are accessible to an instance of a class - self is set to the isntance in teh context of the method
- used to perform operations/procedures relating to the instance and its properties (i.e instance variables)
- defined using def <method_name> within the class definition

Class Methods
- methods that are accessible to the class itself - self ise set to the clas in the context of the method
- used to perform operations/procedures relating to the class as a whole and its properties (i.e. class variables)
- used to perfrom general operations/procedures that instances may need but that dont relate to thier specific properties (i.e. instance variables)
- Factory Method - are special class methods used to create a specific type of instance of that class
- def self.<method_name> within the class definition



Debugging Notes
*Using Byebug

    Commands:
        list=  - re-display where you are paused in the source code
        display some_variable  - set expression to watch everytime the debugger stops
        block_given?  - returns boolean if whats passed on to method is a block