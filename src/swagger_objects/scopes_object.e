note
	description: "Summary description for {SCOPES_OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SCOPES_OBJECT

inherit

	SWAGGER_API_OBJECT

create
	make

feature {NONE} -- Initialization

	make
			-- initializes a new instance
		do
			initialize
			create scopes.make (10)
		end

feature -- Access

	scopes: HASH_TABLE [STRING, STRING]
			-- Maps between a name of a scope to a short description of it

feature -- Change Element

	set_scope (some_scopes: HASH_TABLE [STRING, STRING])
			-- adds a scope
		do
			scopes := some_scopes
		end

feature {SWAGGER_VISITOR} --Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_scopes_object (current)
		end

end
