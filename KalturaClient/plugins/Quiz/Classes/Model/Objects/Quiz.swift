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

open class Quiz: ObjectBase {

	public var version: Int? = nil
	/**  Array of key value ui related objects  */
	public var uiAttributes: Array<KeyValue>? = nil
	public var showResultOnAnswer: Bool? = nil
	public var showCorrectKeyOnAnswer: Bool? = nil
	public var allowAnswerUpdate: Bool? = nil
	public var showCorrectAfterSubmission: Bool? = nil
	public var allowDownload: Bool? = nil
	public var showGradeAfterSubmission: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["version"] != nil {
			version = dict["version"] as? Int
		}
		if dict["uiAttributes"] != nil {
			uiAttributes = try JSONParser.parse(array: dict["uiAttributes"] as! [Any])
		}
		if dict["showResultOnAnswer"] != nil {
			showResultOnAnswer = dict["showResultOnAnswer"] as? Bool
		}
		if dict["showCorrectKeyOnAnswer"] != nil {
			showCorrectKeyOnAnswer = dict["showCorrectKeyOnAnswer"] as? Bool
		}
		if dict["allowAnswerUpdate"] != nil {
			allowAnswerUpdate = dict["allowAnswerUpdate"] as? Bool
		}
		if dict["showCorrectAfterSubmission"] != nil {
			showCorrectAfterSubmission = dict["showCorrectAfterSubmission"] as? Bool
		}
		if dict["allowDownload"] != nil {
			allowDownload = dict["allowDownload"] as? Bool
		}
		if dict["showGradeAfterSubmission"] != nil {
			showGradeAfterSubmission = dict["showGradeAfterSubmission"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(uiAttributes != nil) {
			dict["uiAttributes"] = uiAttributes!.map { value in value.toDictionary() }
		}
		if(showResultOnAnswer != nil) {
			dict["showResultOnAnswer"] = showResultOnAnswer!
		}
		if(showCorrectKeyOnAnswer != nil) {
			dict["showCorrectKeyOnAnswer"] = showCorrectKeyOnAnswer!
		}
		if(allowAnswerUpdate != nil) {
			dict["allowAnswerUpdate"] = allowAnswerUpdate!
		}
		if(showCorrectAfterSubmission != nil) {
			dict["showCorrectAfterSubmission"] = showCorrectAfterSubmission!
		}
		if(allowDownload != nil) {
			dict["allowDownload"] = allowDownload!
		}
		if(showGradeAfterSubmission != nil) {
			dict["showGradeAfterSubmission"] = showGradeAfterSubmission!
		}
		return dict
	}
}

