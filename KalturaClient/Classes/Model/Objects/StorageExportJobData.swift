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
// Copyright (C) 2006-2019  Kaltura Inc.
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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class StorageExportJobData: StorageJobData {

	public class StorageExportJobDataTokenizer: StorageJobData.StorageJobDataTokenizer {
		
		public var force: BaseTokenizedObject {
			get {
				return self.append("force") 
			}
		}
		
		public var createLink: BaseTokenizedObject {
			get {
				return self.append("createLink") 
			}
		}
	}

	public var force: Bool? = nil
	public var createLink: Bool? = nil


	public func setMultiRequestToken(force: String) {
		self.dict["force"] = force
	}
	
	public func setMultiRequestToken(createLink: String) {
		self.dict["createLink"] = createLink
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["force"] != nil {
			force = dict["force"] as? Bool
		}
		if dict["createLink"] != nil {
			createLink = dict["createLink"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(force != nil) {
			dict["force"] = force!
		}
		if(createLink != nil) {
			dict["createLink"] = createLink!
		}
		return dict
	}
}

