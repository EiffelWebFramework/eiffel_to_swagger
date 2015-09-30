note
	description: "Summary description for {PARAMETERS_DEFINITIONS_OBJECT}."
	date: "$Date$"
	revision: "$Revision$"

class
	PARAMETERS_DEFINITIONS_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			-- initializes a new instance
		do
			initialize
			create parameters.make (10)
		end

feature -- Access

	parameters: HASH_TABLE [PARAMETER_OBJECT, STRING]
			-- parameter defionitions, mapping a name to the parameter it defines

feature -- Change Element

	set_parameters (some_parameters: HASH_TABLE [PARAMETER_OBJECT, STRING])
			-- adds a parameter
		do
			parameters := some_parameters
		end

feature {SWAGGER_VISITOR} --Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_parameters_definitions_object (current)
		end

end
