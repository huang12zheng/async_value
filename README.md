* An utility for safely manipulating asynchronous data
> just clone from Riverpod

By using [AsyncValue], you are guaranteed that you cannot forget to handle the loading/error state of an asynchronous operation.

It also expose some utilities to nicely convert an [AsyncValue] to a different object.
For example, a Flutter Widget may use [when] to convert an [AsyncValue]
into either a progress indicator, an error screen, or to show the data:
