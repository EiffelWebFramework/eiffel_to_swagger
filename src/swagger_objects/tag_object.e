note
	description: "Summary description for {TAG_OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TAG_OBJECT

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

	name: STRING

	description: STRING

	external_docs: EXTERNAL_DOCUMENTATION_OBJECT


feature -- Change Element

	set_name (a_name: STRING)
			-- sets the name
		do
			name := a_name
		end

	set_description (a_description: STRING)
			-- sets the description
		do
			description := a_description
		end

	set_external_docs (a_external_doc: EXTERNAL_DOCUMENTATION_OBJECT)
			-- sets the external docs
		do
			external_docs := a_external_doc
		end

feature {SWAGGER_VISITOR} --Visitor

	process (v: SWAGGER_VISITOR)
		do
			v.process_tag_object (current)
		end

end
