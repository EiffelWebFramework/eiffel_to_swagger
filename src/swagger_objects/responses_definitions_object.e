note
	description: "Summary description for {RESPONSES_DEFINITIONS_OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RESPONSES_DEFINITIONS_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			-- initializes a new instance
		do
			initialize
		end

feature -- Access

	responses: HASH_TABLE [RESPONSE_OBJECT, STRING]
			-- response defionitions, mapping a name to the parameter it defines

feature -- Change Element

	set_responses (some_responses: HASH_TABLE [RESPONSE_OBJECT, STRING])
			-- adds a response
		do
			responses := some_responses
		end

feature {SWAGGER_VISITOR} -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_responses_definitions_object (current)
		end

end
