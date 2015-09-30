note
	description: "Base class of a JSON object"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	JSON_VALUE_OBJECT

feature {JSON_VISITOR} -- Visitor

	process (v: JSON_VISITOR)
		deferred
		end

end
