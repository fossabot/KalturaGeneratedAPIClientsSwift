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

/**  Allows user to 'like' or 'unlike' and entry  */
public final class LikeService{

	public static func checkLikeExists(entryId: String) -> RequestBuilder<Bool> {
		return checkLikeExists(entryId: entryId, userId: nil)
	}

	public static func checkLikeExists(entryId: String, userId: String?) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "like_like", action: "checkLikeExists")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "userId", value: userId)

		return request
	}

	public static func like(entryId: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "like_like", action: "like")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func list() -> RequestBuilder<LikeListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: LikeFilter?) -> RequestBuilder<LikeListResponse> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: LikeFilter?, pager: FilterPager?) -> RequestBuilder<LikeListResponse> {
		let request: RequestBuilder<LikeListResponse> = RequestBuilder<LikeListResponse>(service: "like_like", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func unlike(entryId: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "like_like", action: "unlike")
			.setBody(key: "entryId", value: entryId)

		return request
	}
}
