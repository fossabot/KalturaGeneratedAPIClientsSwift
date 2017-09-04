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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

extension UserEntryService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func userEntry<T: UserEntry.UserEntryTokenizer>() -> T {
			return T(self.append("userEntry"))
		}
	}

	/**  Adds a user_entry to the Kaltura DB.  */
	public static func add(userEntry: UserEntry) -> RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, AddTokenizer> = RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, AddTokenizer>(service: "userentry", action: "add")
			.setBody(key: "userEntry", value: userEntry)

		return request
	}

	public class BulkDeleteTokenizer: ClientTokenizer  {
		
		public func filter<T: UserEntryFilter.UserEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func bulkDelete(filter: UserEntryFilter) -> RequestBuilder<Int, BaseTokenizedObject, BulkDeleteTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, BulkDeleteTokenizer> = RequestBuilder<Int, BaseTokenizedObject, BulkDeleteTokenizer>(service: "userentry", action: "bulkDelete")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func delete(id: Int) -> RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, DeleteTokenizer> = RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, DeleteTokenizer>(service: "userentry", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func get(id: String) -> RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, GetTokenizer> = RequestBuilder<UserEntry, UserEntry.UserEntryTokenizer, GetTokenizer>(service: "userentry", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UserEntryFilter.UserEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<UserEntryListResponse, UserEntryListResponse.UserEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: UserEntryFilter?) -> RequestBuilder<UserEntryListResponse, UserEntryListResponse.UserEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: UserEntryFilter?, pager: FilterPager?) -> RequestBuilder<UserEntryListResponse, UserEntryListResponse.UserEntryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UserEntryListResponse, UserEntryListResponse.UserEntryListResponseTokenizer, ListTokenizer> = RequestBuilder<UserEntryListResponse, UserEntryListResponse.UserEntryListResponseTokenizer, ListTokenizer>(service: "userentry", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class SubmitQuizTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Submits the quiz so that it's status will be submitted and calculates the score
	  for the quiz  */
	public static func submitQuiz(id: Int) -> RequestBuilder<QuizUserEntry, QuizUserEntry.QuizUserEntryTokenizer, SubmitQuizTokenizer> {
		let request: RequestBuilder<QuizUserEntry, QuizUserEntry.QuizUserEntryTokenizer, SubmitQuizTokenizer> = RequestBuilder<QuizUserEntry, QuizUserEntry.QuizUserEntryTokenizer, SubmitQuizTokenizer>(service: "userentry", action: "submitQuiz")
			.setBody(key: "id", value: id)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func userEntry<T: UserEntry.UserEntryTokenizer>() -> T {
			return T(self.append("userEntry"))
		}
	}

	public static func update(id: Int, userEntry: UserEntry) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "userentry", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "userEntry", value: userEntry)

		return request
	}
}
