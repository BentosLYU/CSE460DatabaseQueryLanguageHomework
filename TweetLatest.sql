CREATE TABLE Usera(
	Username varchar(255) primary key,
	Displayname varchar(255) unique not null,
	Password varchar(255) not null
);

CREATE TABLE Tweet(
	TweetID bigserial primary key,
	Username varchar(255) not null references Usera(Username),
	PostedTime timestamp(6) not null,
	Content varchar(140) not null,
	IsDraft boolean not null default true
);

CREATE TABLE Follow(
	Followee varchar(255) not null references Usera(Username),
	Follower varchar(255) not null references Usera(Username),
	primary key (Username, Follower)
);

CREATE TABLE Likea(
	Username varchar(255) not null references Usera(Username),
	TweetID bigint not null references Tweet(TweetID),
	primary key (Username, TweetID)
);

CREATE TABLE Commenta(
	CommentID bigserial primary key,
	Username varchar(255) not null references Usera(Username),
	TweetID bigint not null references Tweet(TweetID),
	Content text not null,
	CommentTime timestamp(6) not null
);

CREATE TABLE ReTweet(
	ReTweetID bigserial primary key,
	Username varchar(255) not null references Usera(Username),
	TweetID bigint not null references Tweet(TweetID),
	Comment text,
	ReTweetTime timestamp(6) not null
);
