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

open class EmailNotificationDispatchJobData: EventNotificationDispatchJobData {

	public class EmailNotificationDispatchJobDataTokenizer: EventNotificationDispatchJobData.EventNotificationDispatchJobDataTokenizer {
		
		public var fromEmail: BaseTokenizedObject {
			get {
				return self.append("fromEmail") 
			}
		}
		
		public var fromName: BaseTokenizedObject {
			get {
				return self.append("fromName") 
			}
		}
		
		public func to<T: EmailNotificationRecipientJobData.EmailNotificationRecipientJobDataTokenizer>() -> T {
			return T(self.append("to"))
		}
		
		public func cc<T: EmailNotificationRecipientJobData.EmailNotificationRecipientJobDataTokenizer>() -> T {
			return T(self.append("cc"))
		}
		
		public func bcc<T: EmailNotificationRecipientJobData.EmailNotificationRecipientJobDataTokenizer>() -> T {
			return T(self.append("bcc"))
		}
		
		public func replyTo<T: EmailNotificationRecipientJobData.EmailNotificationRecipientJobDataTokenizer>() -> T {
			return T(self.append("replyTo"))
		}
		
		public var priority: BaseTokenizedObject {
			get {
				return self.append("priority") 
			}
		}
		
		public var confirmReadingTo: BaseTokenizedObject {
			get {
				return self.append("confirmReadingTo") 
			}
		}
		
		public var hostname: BaseTokenizedObject {
			get {
				return self.append("hostname") 
			}
		}
		
		public var messageID: BaseTokenizedObject {
			get {
				return self.append("messageID") 
			}
		}
		
		public var customHeaders: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("customHeaders"))
			} 
		}
	}

	/**  Define the email sender email  */
	public var fromEmail: String? = nil
	/**  Define the email sender name  */
	public var fromName: String? = nil
	/**  Email recipient emails and names, key is mail address and value is the name  */
	public var to: EmailNotificationRecipientJobData? = nil
	/**  Email cc emails and names, key is mail address and value is the name  */
	public var cc: EmailNotificationRecipientJobData? = nil
	/**  Email bcc emails and names, key is mail address and value is the name  */
	public var bcc: EmailNotificationRecipientJobData? = nil
	/**  Email addresses that a replies should be sent to, key is mail address and value
	  is the name  */
	public var replyTo: EmailNotificationRecipientJobData? = nil
	/**  Define the email priority  */
	public var priority: EmailNotificationTemplatePriority? = nil
	/**  Email address that a reading confirmation will be sent to  */
	public var confirmReadingTo: String? = nil
	/**  Hostname to use in Message-Id and Received headers and as default HELO string.  
	   If empty, the value returned by SERVER_NAME is used or 'localhost.localdomain'.  */
	public var hostname: String? = nil
	/**  Sets the message ID to be used in the Message-Id header.   If empty, a unique id
	  will be generated.  */
	public var messageID: String? = nil
	/**  Adds a e-mail custom header  */
	public var customHeaders: Array<KeyValue>? = nil


	public func setMultiRequestToken(fromEmail: String) {
		self.dict["fromEmail"] = fromEmail
	}
	
	public func setMultiRequestToken(fromName: String) {
		self.dict["fromName"] = fromName
	}
	
	public func setMultiRequestToken(priority: String) {
		self.dict["priority"] = priority
	}
	
	public func setMultiRequestToken(confirmReadingTo: String) {
		self.dict["confirmReadingTo"] = confirmReadingTo
	}
	
	public func setMultiRequestToken(hostname: String) {
		self.dict["hostname"] = hostname
	}
	
	public func setMultiRequestToken(messageID: String) {
		self.dict["messageID"] = messageID
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fromEmail"] != nil {
			fromEmail = dict["fromEmail"] as? String
		}
		if dict["fromName"] != nil {
			fromName = dict["fromName"] as? String
		}
		if dict["to"] != nil {
		to = try JSONParser.parse(object: dict["to"] as! [String: Any])		}
		if dict["cc"] != nil {
		cc = try JSONParser.parse(object: dict["cc"] as! [String: Any])		}
		if dict["bcc"] != nil {
		bcc = try JSONParser.parse(object: dict["bcc"] as! [String: Any])		}
		if dict["replyTo"] != nil {
		replyTo = try JSONParser.parse(object: dict["replyTo"] as! [String: Any])		}
		if dict["priority"] != nil {
			priority = EmailNotificationTemplatePriority(rawValue: (dict["priority"] as? Int)!)
		}
		if dict["confirmReadingTo"] != nil {
			confirmReadingTo = dict["confirmReadingTo"] as? String
		}
		if dict["hostname"] != nil {
			hostname = dict["hostname"] as? String
		}
		if dict["messageID"] != nil {
			messageID = dict["messageID"] as? String
		}
		if dict["customHeaders"] != nil {
			customHeaders = try JSONParser.parse(array: dict["customHeaders"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fromEmail != nil) {
			dict["fromEmail"] = fromEmail!
		}
		if(fromName != nil) {
			dict["fromName"] = fromName!
		}
		if(to != nil) {
			dict["to"] = to!.toDictionary()
		}
		if(cc != nil) {
			dict["cc"] = cc!.toDictionary()
		}
		if(bcc != nil) {
			dict["bcc"] = bcc!.toDictionary()
		}
		if(replyTo != nil) {
			dict["replyTo"] = replyTo!.toDictionary()
		}
		if(priority != nil) {
			dict["priority"] = priority!.rawValue
		}
		if(confirmReadingTo != nil) {
			dict["confirmReadingTo"] = confirmReadingTo!
		}
		if(hostname != nil) {
			dict["hostname"] = hostname!
		}
		if(messageID != nil) {
			dict["messageID"] = messageID!
		}
		if(customHeaders != nil) {
			dict["customHeaders"] = customHeaders!.map { value in value.toDictionary() }
		}
		return dict
	}
}

