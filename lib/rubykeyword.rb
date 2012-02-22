class String

  #Reference : http://ruby-doc.org/docs/keywords/1.9/
  KEYWORDS = {
    "BEGIN" => "Designates, via code block, code to be executed unconditionally before sequential execution of the program begins. Sometimes used to simulate forward references to methods.",
    "END" => "Designates, via code block, code to be executed just prior to program termination.",
    "__ENCODING__" => "The current default encoding, as an Encoding instance.",
    "__END__" => "Denotes the end of the regular source code section of a program file. Lines below __END__ will not be executed. Those lines will be available via the special filehandle DATA. The following code will print out two stanzas of personal information. Note that __END__ has to be flush left, and has to be the only thing on its line.",
    "__FILE__" => "The name of the file currently being executed, including path relative to the directory where the application was started up (or the current directory, if it has been changed). The current file is, in some cases, different from the startup file for the running application, which is available in the global variable",
    "__LINE__" => "The line number, in the current source file, of the current line.",
    "alias" => "Creates an alias or duplicate method name for a given method. The original method continues to be accessible via the alias, even if it is overriden. Takes two method-name arguments (which can be represented by strings or symbols but can also be the bare names themselves).",
    "and" => "Boolean and operator. Differs from && in that and has lower precedence.",
    "begin" => "Together with end, delimits what is commonly called a “begin” block (to distinguish it from the Proc type of code block). A “begin” block allows the use of while and until in modifier position with multi-line statements",
    "break" => "Causes unconditional termination of a code block or while or until block, with control transfered to the line after the block. If given an argument, returns that argument as the value of the terminated block.",
    "case" => "The case statement operator. Case statements consist of an optional condition, which is in the position of an argument to case, and zero or more when clauses. The first when clause to match the condition (or to evaluate to Boolean truth, if the condition is null) “wins”, and its code stanza is executed. The value of the case statement is the value of the successful when clause, or nil if there is no such clause.",
    "class" => "Opens a class definition block. Takes either a constant name or an expression of the form << object. In the latter case, opens a definition block for the singleton class of object.",
    "def" => "Paired with a terminating end, constitutes a method definition. Starts a new local scope; local variables in existence when the def block is entered are not in scope in the block, and local variables created in the block do not survive beyond the block.",
    "defined?" => "defined? expression tests whether or not expression refers to anything recognizable (literal object, local variable that has been initialized, method name visible from the current scope, etc.). The return value is nil if the expression cannot be resolved. Otherwise, the return value provides information about the expression.",
    "do" => "Paired with end, can delimit a code block",
    "else" => "The else keyword denotes a final conditional branch. It appears in connection with if, unless, and case, and rescue. (In the case of rescue, the else branch is executed if no exception is raised.) The else clause is always the last branch in the entire statement, except in the case of rescue where it can be followed by an ensure clause.",
    "elsif" => "Introduces a branch in a conditional (if or unless) statement. Such a statement can contain any number of elsif branches, including zero.",
    "end" => "Marks the end of a while, until, begin, if, def, class, or other keyword-based, block-based construct.",
    "ensure" => "Marks the final, optional clause of a begin/end block, generally in cases where the block also contains a rescue clause. The code in the ensure clause is guaranteed to be executed, whether control flows to the rescue block or not.",
    "false" => "false denotes a special object, the sole instance of FalseClass. false and nil are the only objects that evaluate to Boolean falsehood in Ruby (informally, that cause an if condition to fail.)",
    "for" => "A loop constructor, used with in:",
    "if" => "Ruby’s basic conditional statement constructor. if evaluates its argument and branches on the result. Additional branches can be added to an if statement with else and elsif.",
    "in" => "See for.",
    "module" => "Opens a module definition block. Takes a constant (the name of the module) as its argument. The definition block starts a new local scope; existing variables are not visible inside the block, and local variables created in the block do not survive the end of the block.",
    "next" => "Bumps an iterator, or a while or until block,to the next iteration, unconditionally and without executing whatever may remain of the block.",
    "nil" => "A special “non-object”. nil is, in fact, an object (the sole instance of NilClass), but connotes absence and indeterminacy. nil and false are the only two objects in Ruby that have Boolean falsehood (informally, that cause an if condition to fail).",
    "not" => "Boolean negation.",
    "or" => "Boolean or. Differs from || in that or has lower precedence.",
    "redo" => "Causes unconditional re-execution of a code block, with the same parameter bindings as the current execution.",
    "rescue" => "Designates an exception-handling clause. Can occur either inside a begin<code>/<code>end block, inside a method definition (which implies begin), or in modifier position (at the end of a statement).",
    "retry" => "Inside a rescue clause, retry causes Ruby to return to the top of the enclosing code (the begin keyword, or top of method or block) and try executing the code again.",
    "return" => "Inside a method definition, executes the ensure clause, if present, and then returns control to the context of the method call. Takes an optional argument (defaulting to nil), which serves as the return value of the method. Multiple values in argument position will be returned in an array.",
    "self" => "self is the current object and the default receiver of messages (method calls) for which no explicit receiver is specified. Which object plays the role of self depends on the context.",
    "super" => "Called from a method, searches along the method lookup path (the classes and modules available to the current object) for the next method of the same name as the one being executed. Such method, if present, may be defined in the superclass of the object’s class, but may also be defined in the superclass’s superclass or any class on the upward path, as well as any module mixed in to any of those classes.",
    "then" => "Optional component of conditional statements (if, unless, when). Never mandatory, but allows for one-line conditionals without semi-colons.",
    "true" => "The sole instance of the special class TrueClass. true encapsulates Boolean truth; however, <emph>all</emph> objects in Ruby are true in the Boolean sense (informally, they cause an if test to succeed), with the exceptions of false and nil.",
    "undef" => "Undefines a given method, for the class or module in which it’s called. If the method is defined higher up in the lookup path (such as by a superclass), it can still be called by instances classes higher up.",
    "unless" => "The negative equivalent of if.",
    "until" => "The inverse of while : executes code until a given condition is true, i.e., while it is not true. The semantics are the same as those of while; see while.",
    "when" => "See case.",
    "while" => "while takes a condition argument, and executes the code that follows (up to a matching end delimiter) while the condition is true.",
    "yield" => "Called from inside a method body, yields control to the code block (if any) supplied as part of the method call. If no code block has been supplied, calling yield raises an exception.",
    }

  def keyword
    return true if KEYWORDS.keys.include? self
    return false
  end

  def define
    if keyword
      return KEYWORDS[self]
    else
      return false
    end
  end

end

