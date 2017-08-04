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

open class PlayableEntry: BaseEntry {

	/**  Number of plays  */
	public var plays: Int? = nil
	/**  Number of views  */
	public var views: Int? = nil
	/**  The last time the entry was played  */
	public var lastPlayedAt: Int? = nil
	/**  The width in pixels  */
	public var width: Int? = nil
	/**  The height in pixels  */
	public var height: Int? = nil
	/**  The duration in seconds  */
	public var duration: Int? = nil
	/**  The duration in miliseconds  */
	public var msDuration: Int? = nil
	/**  The duration type (short for 0-4 mins, medium for 4-20 mins, long for 20+ mins)  */
	public var durationType: DurationType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["plays"] != nil {
			plays = dict["plays"] as? Int
		}
		if dict["views"] != nil {
			views = dict["views"] as? Int
		}
		if dict["lastPlayedAt"] != nil {
			lastPlayedAt = dict["lastPlayedAt"] as? Int
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["msDuration"] != nil {
			msDuration = dict["msDuration"] as? Int
		}
		if dict["durationType"] != nil {
			durationType = DurationType(rawValue: "\(dict["durationType"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(msDuration != nil) {
			dict["msDuration"] = msDuration!
		}
		return dict
	}
}

