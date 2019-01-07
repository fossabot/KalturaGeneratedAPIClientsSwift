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

open class ReportTable: ObjectBase {

	public class ReportTableTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var header: BaseTokenizedObject {
			get {
				return self.append("header") 
			}
		}
		
		public var data: BaseTokenizedObject {
			get {
				return self.append("data") 
			}
		}
		
		public var totalCount: BaseTokenizedObject {
			get {
				return self.append("totalCount") 
			}
		}
	}

	public var header: String? = nil
	public var data: String? = nil
	public var totalCount: Int? = nil


	public func setMultiRequestToken(header: String) {
		self.dict["header"] = header
	}
	
	public func setMultiRequestToken(data: String) {
		self.dict["data"] = data
	}
	
	public func setMultiRequestToken(totalCount: String) {
		self.dict["totalCount"] = totalCount
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["header"] != nil {
			header = dict["header"] as? String
		}
		if dict["data"] != nil {
			data = dict["data"] as? String
		}
		if dict["totalCount"] != nil {
			totalCount = dict["totalCount"] as? Int
		}

	}

}

