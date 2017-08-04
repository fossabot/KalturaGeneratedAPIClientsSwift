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

open class ConvertCollectionJobData: ConvartableJobData {

	public var destDirLocalPath: String? = nil
	public var destDirRemoteUrl: String? = nil
	public var destFileName: String? = nil
	public var inputXmlLocalPath: String? = nil
	public var inputXmlRemoteUrl: String? = nil
	public var commandLinesStr: String? = nil
	public var flavors: Array<ConvertCollectionFlavorData>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["destDirLocalPath"] != nil {
			destDirLocalPath = dict["destDirLocalPath"] as? String
		}
		if dict["destDirRemoteUrl"] != nil {
			destDirRemoteUrl = dict["destDirRemoteUrl"] as? String
		}
		if dict["destFileName"] != nil {
			destFileName = dict["destFileName"] as? String
		}
		if dict["inputXmlLocalPath"] != nil {
			inputXmlLocalPath = dict["inputXmlLocalPath"] as? String
		}
		if dict["inputXmlRemoteUrl"] != nil {
			inputXmlRemoteUrl = dict["inputXmlRemoteUrl"] as? String
		}
		if dict["commandLinesStr"] != nil {
			commandLinesStr = dict["commandLinesStr"] as? String
		}
		if dict["flavors"] != nil {
			flavors = try JSONParser.parse(array: dict["flavors"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(destDirLocalPath != nil) {
			dict["destDirLocalPath"] = destDirLocalPath!
		}
		if(destDirRemoteUrl != nil) {
			dict["destDirRemoteUrl"] = destDirRemoteUrl!
		}
		if(destFileName != nil) {
			dict["destFileName"] = destFileName!
		}
		if(inputXmlLocalPath != nil) {
			dict["inputXmlLocalPath"] = inputXmlLocalPath!
		}
		if(inputXmlRemoteUrl != nil) {
			dict["inputXmlRemoteUrl"] = inputXmlRemoteUrl!
		}
		if(commandLinesStr != nil) {
			dict["commandLinesStr"] = commandLinesStr!
		}
		if(flavors != nil) {
			dict["flavors"] = flavors!.map { value in value.toDictionary() }
		}
		return dict
	}
}

