note
	description: "Summary description for {PARAMETER_BODY_OBJECT}."
	date: "$Date$"
	revision: "$Revision$"

class
	PARAMETER_BODY_OBJECT

inherit

	PARAMETER_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			-- initializes a new instance
		do
			initialize
		end

feature -- Access

	schema: SCHEMA_OBJECT

feature -- Change Element

	set_schema (a_schema: SCHEMA_OBJECT)
			-- sets the schema
		do
			schema := a_schema
		end

feature {SWAGGER_VISITOR} --Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_parameter_body_object (current)
		end

end
