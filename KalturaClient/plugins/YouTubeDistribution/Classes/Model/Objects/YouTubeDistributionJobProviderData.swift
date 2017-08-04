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

open class YouTubeDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public var videoAssetFilePath: String? = nil
	public var thumbAssetFilePath: String? = nil
	public var captionAssetIds: String? = nil
	public var sftpDirectory: String? = nil
	public var sftpMetadataFilename: String? = nil
	public var currentPlaylists: String? = nil
	public var newPlaylists: String? = nil
	public var submitXml: String? = nil
	public var updateXml: String? = nil
	public var deleteXml: String? = nil
	public var googleClientId: String? = nil
	public var googleClientSecret: String? = nil
	public var googleTokenData: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["videoAssetFilePath"] != nil {
			videoAssetFilePath = dict["videoAssetFilePath"] as? String
		}
		if dict["thumbAssetFilePath"] != nil {
			thumbAssetFilePath = dict["thumbAssetFilePath"] as? String
		}
		if dict["captionAssetIds"] != nil {
			captionAssetIds = dict["captionAssetIds"] as? String
		}
		if dict["sftpDirectory"] != nil {
			sftpDirectory = dict["sftpDirectory"] as? String
		}
		if dict["sftpMetadataFilename"] != nil {
			sftpMetadataFilename = dict["sftpMetadataFilename"] as? String
		}
		if dict["currentPlaylists"] != nil {
			currentPlaylists = dict["currentPlaylists"] as? String
		}
		if dict["newPlaylists"] != nil {
			newPlaylists = dict["newPlaylists"] as? String
		}
		if dict["submitXml"] != nil {
			submitXml = dict["submitXml"] as? String
		}
		if dict["updateXml"] != nil {
			updateXml = dict["updateXml"] as? String
		}
		if dict["deleteXml"] != nil {
			deleteXml = dict["deleteXml"] as? String
		}
		if dict["googleClientId"] != nil {
			googleClientId = dict["googleClientId"] as? String
		}
		if dict["googleClientSecret"] != nil {
			googleClientSecret = dict["googleClientSecret"] as? String
		}
		if dict["googleTokenData"] != nil {
			googleTokenData = dict["googleTokenData"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(videoAssetFilePath != nil) {
			dict["videoAssetFilePath"] = videoAssetFilePath!
		}
		if(thumbAssetFilePath != nil) {
			dict["thumbAssetFilePath"] = thumbAssetFilePath!
		}
		if(captionAssetIds != nil) {
			dict["captionAssetIds"] = captionAssetIds!
		}
		if(sftpDirectory != nil) {
			dict["sftpDirectory"] = sftpDirectory!
		}
		if(sftpMetadataFilename != nil) {
			dict["sftpMetadataFilename"] = sftpMetadataFilename!
		}
		if(currentPlaylists != nil) {
			dict["currentPlaylists"] = currentPlaylists!
		}
		if(newPlaylists != nil) {
			dict["newPlaylists"] = newPlaylists!
		}
		if(submitXml != nil) {
			dict["submitXml"] = submitXml!
		}
		if(updateXml != nil) {
			dict["updateXml"] = updateXml!
		}
		if(deleteXml != nil) {
			dict["deleteXml"] = deleteXml!
		}
		if(googleClientId != nil) {
			dict["googleClientId"] = googleClientId!
		}
		if(googleClientSecret != nil) {
			dict["googleClientSecret"] = googleClientSecret!
		}
		if(googleTokenData != nil) {
			dict["googleTokenData"] = googleTokenData!
		}
		return dict
	}
}

