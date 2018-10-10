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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class ReportInputFilter: ReportInputBaseFilter {

	public class ReportInputFilterTokenizer: ReportInputBaseFilter.ReportInputBaseFilterTokenizer {
		
		public var keywords: BaseTokenizedObject {
			get {
				return self.append("keywords") 
			}
		}
		
		public var searchInTags: BaseTokenizedObject {
			get {
				return self.append("searchInTags") 
			}
		}
		
		public var searchInAdminTags: BaseTokenizedObject {
			get {
				return self.append("searchInAdminTags") 
			}
		}
		
		public var categories: BaseTokenizedObject {
			get {
				return self.append("categories") 
			}
		}
		
		public var customVar1In: BaseTokenizedObject {
			get {
				return self.append("customVar1In") 
			}
		}
		
		public var customVar2In: BaseTokenizedObject {
			get {
				return self.append("customVar2In") 
			}
		}
		
		public var customVar3In: BaseTokenizedObject {
			get {
				return self.append("customVar3In") 
			}
		}
		
		public var timeZoneOffset: BaseTokenizedObject {
			get {
				return self.append("timeZoneOffset") 
			}
		}
		
		public var interval: BaseTokenizedObject {
			get {
				return self.append("interval") 
			}
		}
	}

	/**  Search keywords to filter objects  */
	public var keywords: String? = nil
	/**  Search keywords in onjects tags  */
	public var searchInTags: Bool? = nil
	/**  Search keywords in onjects admin tags  */
	public var searchInAdminTags: Bool? = nil
	/**  Search onjects in specified categories  */
	public var categories: String? = nil
	/**  Filter by customVar1  */
	public var customVar1In: String? = nil
	/**  Filter by customVar2  */
	public var customVar2In: String? = nil
	/**  Filter by customVar3  */
	public var customVar3In: String? = nil
	/**  Time zone offset in minutes  */
	public var timeZoneOffset: Int? = nil
	/**  Aggregated results according to interval  */
	public var interval: ReportInterval? = nil


	public func setMultiRequestToken(keywords: String) {
		self.dict["keywords"] = keywords
	}
	
	public func setMultiRequestToken(searchInTags: String) {
		self.dict["searchInTags"] = searchInTags
	}
	
	public func setMultiRequestToken(searchInAdminTags: String) {
		self.dict["searchInAdminTags"] = searchInAdminTags
	}
	
	public func setMultiRequestToken(categories: String) {
		self.dict["categories"] = categories
	}
	
	public func setMultiRequestToken(customVar1In: String) {
		self.dict["customVar1In"] = customVar1In
	}
	
	public func setMultiRequestToken(customVar2In: String) {
		self.dict["customVar2In"] = customVar2In
	}
	
	public func setMultiRequestToken(customVar3In: String) {
		self.dict["customVar3In"] = customVar3In
	}
	
	public func setMultiRequestToken(timeZoneOffset: String) {
		self.dict["timeZoneOffset"] = timeZoneOffset
	}
	
	public func setMultiRequestToken(interval: String) {
		self.dict["interval"] = interval
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["keywords"] != nil {
			keywords = dict["keywords"] as? String
		}
		if dict["searchInTags"] != nil {
			searchInTags = dict["searchInTags"] as? Bool
		}
		if dict["searchInAdminTags"] != nil {
			searchInAdminTags = dict["searchInAdminTags"] as? Bool
		}
		if dict["categories"] != nil {
			categories = dict["categories"] as? String
		}
		if dict["customVar1In"] != nil {
			customVar1In = dict["customVar1In"] as? String
		}
		if dict["customVar2In"] != nil {
			customVar2In = dict["customVar2In"] as? String
		}
		if dict["customVar3In"] != nil {
			customVar3In = dict["customVar3In"] as? String
		}
		if dict["timeZoneOffset"] != nil {
			timeZoneOffset = dict["timeZoneOffset"] as? Int
		}
		if dict["interval"] != nil {
			interval = ReportInterval(rawValue: "\(dict["interval"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(keywords != nil) {
			dict["keywords"] = keywords!
		}
		if(searchInTags != nil) {
			dict["searchInTags"] = searchInTags!
		}
		if(searchInAdminTags != nil) {
			dict["searchInAdminTags"] = searchInAdminTags!
		}
		if(categories != nil) {
			dict["categories"] = categories!
		}
		if(customVar1In != nil) {
			dict["customVar1In"] = customVar1In!
		}
		if(customVar2In != nil) {
			dict["customVar2In"] = customVar2In!
		}
		if(customVar3In != nil) {
			dict["customVar3In"] = customVar3In!
		}
		if(timeZoneOffset != nil) {
			dict["timeZoneOffset"] = timeZoneOffset!
		}
		if(interval != nil) {
			dict["interval"] = interval!.rawValue
		}
		return dict
	}
}

