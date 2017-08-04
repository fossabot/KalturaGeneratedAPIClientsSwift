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

open class WowzaMediaServerNode: MediaServerNode {

	/**  Wowza Media server app prefix  */
	public var appPrefix: String? = nil
	/**  Wowza Media server transcoder configuration overide  */
	public var transcoder: String? = nil
	/**  Wowza Media server GPU index id  */
	public var GPUID: Int? = nil
	/**  Live service port  */
	public var liveServicePort: Int? = nil
	/**  Live service protocol  */
	public var liveServiceProtocol: String? = nil
	/**  Wowza media server live service internal domain  */
	public var liveServiceInternalDomain: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["appPrefix"] != nil {
			appPrefix = dict["appPrefix"] as? String
		}
		if dict["transcoder"] != nil {
			transcoder = dict["transcoder"] as? String
		}
		if dict["GPUID"] != nil {
			GPUID = dict["GPUID"] as? Int
		}
		if dict["liveServicePort"] != nil {
			liveServicePort = dict["liveServicePort"] as? Int
		}
		if dict["liveServiceProtocol"] != nil {
			liveServiceProtocol = dict["liveServiceProtocol"] as? String
		}
		if dict["liveServiceInternalDomain"] != nil {
			liveServiceInternalDomain = dict["liveServiceInternalDomain"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(appPrefix != nil) {
			dict["appPrefix"] = appPrefix!
		}
		if(transcoder != nil) {
			dict["transcoder"] = transcoder!
		}
		if(GPUID != nil) {
			dict["GPUID"] = GPUID!
		}
		if(liveServicePort != nil) {
			dict["liveServicePort"] = liveServicePort!
		}
		if(liveServiceProtocol != nil) {
			dict["liveServiceProtocol"] = liveServiceProtocol!
		}
		if(liveServiceInternalDomain != nil) {
			dict["liveServiceInternalDomain"] = liveServiceInternalDomain!
		}
		return dict
	}
}

