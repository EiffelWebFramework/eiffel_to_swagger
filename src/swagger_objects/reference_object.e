note
	description: "Summary description for {REFERNECE_OBJECT}."
	date: "$Date$"
	revision: "$Revision$"

class
	REFERENCE_OBJECT

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

	ref: STRING
			-- the reference string

feature -- Change Element

	set_ref (a_ref: STRING)
			-- sets the ref
		do
			ref := a_ref
		end

feature {SWAGGER_VISITOR} -- Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_reference_object (current)
		end

end
