CREATE TABLE "User"(
	Username varchar(255) primary key,
	Displayname varchar(255) unique not null,
	Password varchar(255) not null
);

CREATE TABLE Tweet(
	TweetID bigserial primary key,
	Username varchar(255) not null references "User"(Username),
	PostedTime timestamp(6) not null,
	Content varchar(140) not null,
	IsDraft int not null default 0
);

CREATE TABLE Follow(
	Username varchar(255) not null references "User"(Username),
	Follower varchar(255) not null references "User"(Username),
	primary key(Username, Follower)
);

CREATE TABLE "Like"(
	Username varchar(255) not null references "User"(Username),
	TweetID bigint not null references Tweet(TweetID),
	primary key(Username, TweetID)
);

CREATE TABLE "Comment"(
	CommentID bigserial primary key,
	Username varchar(255) not null references "User"(Username),
	TweetID bigint not null references Tweet(TweetID),
	Content text not null,
	CommentTime timestamp(6) not null
);

CREATE TABLE ReTweet(
	ReTweetID bigserial primary key,
	Username varchar(255) not null references "User"(Username),
	TweetID bigint not null references Tweet(TweetID),
	Comment text,
	ReTweetTime timestamp(6) not null
);
