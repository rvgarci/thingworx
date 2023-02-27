var params = {
	clientName: undefined /* STRING */,
	name: undefined /* STRING */,
	description: undefined /* STRING */,
	project: undefined /* STRING */,
	whitelist: undefined /* STRING */,
	user: undefined /* USERNAME */,
	tags: undefined /* TAGS */,
	expirationDate: undefined /* DATETIME */
};

// no return
Resources["EntityServices"].CreateApplicationKey(params);

//Get the generated Key's actual appKey value
var KeyID = ApplicationKeys["YOURKEYNAME"].GetKeyID();