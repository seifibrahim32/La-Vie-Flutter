class GetForumsModel {
  String? _type;
  String? _message;
  List<Data>? _data;

  GetForumsModel({String? type, String? message, List<Data>? data}) {
    if (type != null) {
      this._type = type;
    }
    if (message != null) {
      this._message = message;
    }
    if (data != null) {
      this._data = data;
    }
  }

  String? get type => _type;
  set type(String? type) => _type = type;
  String? get message => _message;
  set message(String? message) => _message = message;
  List<Data>? get data => _data;
  set data(List<Data>? data) => _data = data;

  GetForumsModel.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? _forumId;
  String? _title;
  String? _description;
  String? _imageUrl;
  String? _userId;
  List<ForumLikes>? _forumLikes;
  List<ForumComments>? _forumComments;
  User? _user;

  Data(
      {String? forumId,
        String? title,
        String? description,
        String? imageUrl,
        String? userId,
        List<ForumLikes>? forumLikes,
        List<ForumComments>? forumComments,
        User? user}) {
    if (forumId != null) {
      this._forumId = forumId;
    }
    if (title != null) {
      this._title = title;
    }
    if (description != null) {
      this._description = description;
    }
    if (imageUrl != null) {
      this._imageUrl = imageUrl;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (forumLikes != null) {
      this._forumLikes = forumLikes;
    }
    if (forumComments != null) {
      this._forumComments = forumComments;
    }
    if (user != null) {
      this._user = user;
    }
  }

  String? get forumId => _forumId;
  set forumId(String? forumId) => _forumId = forumId;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get imageUrl => _imageUrl;
  set imageUrl(String? imageUrl) => _imageUrl = imageUrl;
  String? get userId => _userId;
  set userId(String? userId) => _userId = userId;
  List<ForumLikes>? get forumLikes => _forumLikes;
  set forumLikes(List<ForumLikes>? forumLikes) => _forumLikes = forumLikes;
  List<ForumComments>? get forumComments => _forumComments;
  set forumComments(List<ForumComments>? forumComments) =>
      _forumComments = forumComments;
  User? get user => _user;
  set user(User? user) => _user = user;

  Data.fromJson(Map<String, dynamic> json) {
    _forumId = json['forumId'];
    _title = json['title'];
    _description = json['description'];
    _imageUrl = json['imageUrl'];
    _userId = json['userId'];
    if (json['ForumLikes'] != null) {
      _forumLikes = <ForumLikes>[];
      json['ForumLikes'].forEach((v) {
        _forumLikes!.add(new ForumLikes.fromJson(v));
      });
    }
    if (json['ForumComments'] != null) {
      _forumComments = <ForumComments>[];
      json['ForumComments'].forEach((v) {
        _forumComments!.add(new ForumComments.fromJson(v));
      });
    }
    _user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['forumId'] = this._forumId;
    data['title'] = this._title;
    data['description'] = this._description;
    data['imageUrl'] = this._imageUrl;
    data['userId'] = this._userId;
    if (this._forumLikes != null) {
      data['ForumLikes'] = this._forumLikes!.map((v) => v.toJson()).toList();
    }
    if (this._forumComments != null) {
      data['ForumComments'] =
          this._forumComments!.map((v) => v.toJson()).toList();
    }
    if (this._user != null) {
      data['user'] = this._user!.toJson();
    }
    return data;
  }
}

class ForumLikes {
  String? _forumId;
  String? _userId;

  ForumLikes({String? forumId, String? userId}) {
    if (forumId != null) {
      this._forumId = forumId;
    }
    if (userId != null) {
      this._userId = userId;
    }
  }

  String? get forumId => _forumId;
  set forumId(String? forumId) => _forumId = forumId;
  String? get userId => _userId;
  set userId(String? userId) => _userId = userId;

  ForumLikes.fromJson(Map<String, dynamic> json) {
    _forumId = json['forumId'];
    _userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['forumId'] = this._forumId;
    data['userId'] = this._userId;
    return data;
  }
}

class ForumComments {
  String? _forumCommentId;
  String? _forumId;
  String? _userId;
  String? _comment;
  String? _createdAt;

  ForumComments(
      {String? forumCommentId,
        String? forumId,
        String? userId,
        String? comment,
        String? createdAt}) {
    if (forumCommentId != null) {
      this._forumCommentId = forumCommentId;
    }
    if (forumId != null) {
      this._forumId = forumId;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (comment != null) {
      this._comment = comment;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
  }

  String? get forumCommentId => _forumCommentId;
  set forumCommentId(String? forumCommentId) =>
      _forumCommentId = forumCommentId;
  String? get forumId => _forumId;
  set forumId(String? forumId) => _forumId = forumId;
  String? get userId => _userId;
  set userId(String? userId) => _userId = userId;
  String? get comment => _comment;
  set comment(String? comment) => _comment = comment;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;

  ForumComments.fromJson(Map<String, dynamic> json) {
    _forumCommentId = json['forumCommentId'];
    _forumId = json['forumId'];
    _userId = json['userId'];
    _comment = json['comment'];
    _createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['forumCommentId'] = this._forumCommentId;
    data['forumId'] = this._forumId;
    data['userId'] = this._userId;
    data['comment'] = this._comment;
    data['createdAt'] = this._createdAt;
    return data;
  }
}

class User {
  String? _firstName;
  String? _lastName;
  String? _imageUrl;

  User({String? firstName, String? lastName, String? imageUrl}) {
    if (firstName != null) {
      this._firstName = firstName;
    }
    if (lastName != null) {
      this._lastName = lastName;
    }
    if (imageUrl != null) {
      this._imageUrl = imageUrl;
    }
  }

  String? get firstName => _firstName;
  set firstName(String? firstName) => _firstName = firstName;
  String? get lastName => _lastName;
  set lastName(String? lastName) => _lastName = lastName;
  String? get imageUrl => _imageUrl;
  set imageUrl(String? imageUrl) => _imageUrl = imageUrl;

  User.fromJson(Map<String, dynamic> json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this._firstName;
    data['lastName'] = this._lastName;
    data['imageUrl'] = this._imageUrl;
    return data;
  }
}