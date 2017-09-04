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

/**  Manage application authentication tokens  */
public final class AppTokenService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func appToken<T: AppToken.AppTokenTokenizer>() -> T {
			return T(self.append("appToken"))
		}
	}

	/**  Add new application authentication token  */
	public static func add(appToken: AppToken) -> RequestBuilder<AppToken, AppToken.AppTokenTokenizer, AddTokenizer> {
		let request: RequestBuilder<AppToken, AppToken.AppTokenTokenizer, AddTokenizer> = RequestBuilder<AppToken, AppToken.AppTokenTokenizer, AddTokenizer>(service: "apptoken", action: "add")
			.setBody(key: "appToken", value: appToken)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete application authentication token by id  */
	public static func delete(id: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "apptoken", action: "delete")
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

	/**  Get application authentication token by id  */
	public static func get(id: String) -> RequestBuilder<AppToken, AppToken.AppTokenTokenizer, GetTokenizer> {
		let request: RequestBuilder<AppToken, AppToken.AppTokenTokenizer, GetTokenizer> = RequestBuilder<AppToken, AppToken.AppTokenTokenizer, GetTokenizer>(service: "apptoken", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AppTokenFilter.AppTokenFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<AppTokenListResponse, AppTokenListResponse.AppTokenListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AppTokenFilter?) -> RequestBuilder<AppTokenListResponse, AppTokenListResponse.AppTokenListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List application authentication tokens by filter and pager  */
	public static func list(filter: AppTokenFilter?, pager: FilterPager?) -> RequestBuilder<AppTokenListResponse, AppTokenListResponse.AppTokenListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AppTokenListResponse, AppTokenListResponse.AppTokenListResponseTokenizer, ListTokenizer> = RequestBuilder<AppTokenListResponse, AppTokenListResponse.AppTokenListResponseTokenizer, ListTokenizer>(service: "apptoken", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class StartSessionTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var tokenHash: BaseTokenizedObject {
			get {
				return self.append("tokenHash") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var expiry: BaseTokenizedObject {
			get {
				return self.append("expiry") 
			}
		}
	}

	public static func startSession(id: String, tokenHash: String) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: nil)
	}

	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		return startSession(id: id, tokenHash: tokenHash, userId: userId, type: type, expiry: nil)
	}

	/**  Starts a new KS (kaltura Session) based on application authentication token id  */
	public static func startSession(id: String, tokenHash: String, userId: String?, type: SessionType?, expiry: Int?) -> RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> {
		let request: RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer> = RequestBuilder<SessionInfo, SessionInfo.SessionInfoTokenizer, StartSessionTokenizer>(service: "apptoken", action: "startSession")
			.setBody(key: "id", value: id)
			.setBody(key: "tokenHash", value: tokenHash)
			.setBody(key: "userId", value: userId)
			.setBody(key: "type", value: type?.rawValue)
			.setBody(key: "expiry", value: expiry)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func appToken<T: AppToken.AppTokenTokenizer>() -> T {
			return T(self.append("appToken"))
		}
	}

	/**  Update application authentication token by id  */
	public static func update(id: String, appToken: AppToken) -> RequestBuilder<AppToken, AppToken.AppTokenTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<AppToken, AppToken.AppTokenTokenizer, UpdateTokenizer> = RequestBuilder<AppToken, AppToken.AppTokenTokenizer, UpdateTokenizer>(service: "apptoken", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "appToken", value: appToken)

		return request
	}
}
