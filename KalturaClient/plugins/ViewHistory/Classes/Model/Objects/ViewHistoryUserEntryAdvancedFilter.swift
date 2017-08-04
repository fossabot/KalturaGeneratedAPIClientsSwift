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

open class ViewHistoryUserEntryAdvancedFilter: SearchItem {

	public var idEqual: String? = nil
	public var idIn: String? = nil
	public var userIdEqual: String? = nil
	public var userIdIn: String? = nil
	public var updatedAtGreaterThanOrEqual: String? = nil
	public var updatedAtLessThanOrEqual: String? = nil
	public var extendedStatusEqual: UserEntryExtendedStatus? = nil
	public var extendedStatusIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? String
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? String
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? String
		}
		if dict["extendedStatusEqual"] != nil {
			extendedStatusEqual = UserEntryExtendedStatus(rawValue: "\(dict["extendedStatusEqual"]!)")
		}
		if dict["extendedStatusIn"] != nil {
			extendedStatusIn = dict["extendedStatusIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(extendedStatusEqual != nil) {
			dict["extendedStatusEqual"] = extendedStatusEqual!.rawValue
		}
		if(extendedStatusIn != nil) {
			dict["extendedStatusIn"] = extendedStatusIn!
		}
		return dict
	}
}

