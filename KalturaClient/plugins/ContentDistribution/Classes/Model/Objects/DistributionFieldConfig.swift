// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2017  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================

/**
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class DistributionFieldConfig: ObjectBase {

	/**  A value taken from a connector field enum which associates the current
	  configuration to that connector field      Field enum class should be returned
	  by the provider's getFieldEnumClass function.  */
	public var fieldName: String? = nil
	/**  A string that will be shown to the user as the field name in error messages
	  related to the current field  */
	public var userFriendlyFieldName: String? = nil
	/**  An XSLT string that extracts the right value from the Kaltura entry MRSS XML.   
	    The value of the current connector field will be the one that is returned from
	  transforming the Kaltura entry MRSS XML using this XSLT string.  */
	public var entryMrssXslt: String? = nil
	/**  Is the field required to have a value for submission ?  */
	public var isRequired: DistributionFieldRequiredStatus? = nil
	/**  Trigger distribution update when this field changes or not ?  */
	public var updateOnChange: Bool? = nil
	/**  Entry column or metadata xpath that should trigger an update  */
	public var updateParams: Array<StringHolder>? = nil
	/**  Is this field config is the default for the distribution provider?  */
	public var isDefault: Bool? = nil
	/**  Is an error on this field going to trigger deletion of distributed content?  */
	public var triggerDeleteOnError: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fieldName"] != nil {
			fieldName = dict["fieldName"] as? String
		}
		if dict["userFriendlyFieldName"] != nil {
			userFriendlyFieldName = dict["userFriendlyFieldName"] as? String
		}
		if dict["entryMrssXslt"] != nil {
			entryMrssXslt = dict["entryMrssXslt"] as? String
		}
		if dict["isRequired"] != nil {
			isRequired = DistributionFieldRequiredStatus(rawValue: (dict["isRequired"] as? Int)!)
		}
		if dict["updateOnChange"] != nil {
			updateOnChange = dict["updateOnChange"] as? Bool
		}
		if dict["updateParams"] != nil {
			updateParams = try JSONParser.parse(array: dict["updateParams"] as! [Any])
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["triggerDeleteOnError"] != nil {
			triggerDeleteOnError = dict["triggerDeleteOnError"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fieldName != nil) {
			dict["fieldName"] = fieldName!
		}
		if(userFriendlyFieldName != nil) {
			dict["userFriendlyFieldName"] = userFriendlyFieldName!
		}
		if(entryMrssXslt != nil) {
			dict["entryMrssXslt"] = entryMrssXslt!
		}
		if(isRequired != nil) {
			dict["isRequired"] = isRequired!.rawValue
		}
		if(updateOnChange != nil) {
			dict["updateOnChange"] = updateOnChange!
		}
		if(updateParams != nil) {
			dict["updateParams"] = updateParams!.map { value in value.toDictionary() }
		}
		if(triggerDeleteOnError != nil) {
			dict["triggerDeleteOnError"] = triggerDeleteOnError!
		}
		return dict
	}
}

