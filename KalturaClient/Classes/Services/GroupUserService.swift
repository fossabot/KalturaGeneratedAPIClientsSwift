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

/**  Add &amp; Manage GroupUser  */
public final class GroupUserService{

	/**  Add new GroupUser  */
	public static func add(groupUser: GroupUser) -> RequestBuilder<GroupUser> {
		let request: RequestBuilder<GroupUser> = RequestBuilder<GroupUser>(service: "groupuser", action: "add")
			.setBody(key: "groupUser", value: groupUser)

		return request
	}

	/**  delete by userId and groupId  */
	public static func delete(userId: String, groupId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "groupuser", action: "delete")
			.setBody(key: "userId", value: userId)
			.setBody(key: "groupId", value: groupId)

		return request
	}

	public static func list() -> RequestBuilder<GroupUserListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: GroupUserFilter?) -> RequestBuilder<GroupUserListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all GroupUsers  */
	public static func list(filter: GroupUserFilter?, pager: FilterPager?) -> RequestBuilder<GroupUserListResponse> {
		let request: RequestBuilder<GroupUserListResponse> = RequestBuilder<GroupUserListResponse>(service: "groupuser", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}
}
