# cookbook-restartwatch

__Note:__ This cookbook was previously available as "restart-watch".
My apologies for any inconvenience with the change.

The restartwatch Chef cookbook includes a default recipe
to add a logwatch service that will indicate if a system reboot is required
as the result of an update installed by unattended-upgrade.

The service ignores logwatch detail level and range.
If a reboot is required, a "Restart required" section is
added to the report, otherwise it's not.

For a more complete description of how this works,
check out [Extending logwatch](http://www.rollnorocks.com/2014/03/extendinglogwatch/)
on the RollNoRocks blog.

## Berkshelf and librarian
```ruby
  # Berkshelf:
  cookbook 'restartwatch', github: 'flatrocks/cookbook-restartwatch', tag: '0.2.0'


  # librarian-chef:
  cookbook 'restartwatch', github: 'flatrocks/cookbook-restartwatch', ref: '0.2.0'
```

## Supported platforms

This was written and tested for Ubuntu 12.04.
I will probably work with any
linux distrubution that can install logwatch.

## Dependencies

This cookbook lists the standard "logwatch" cookbook as a dependency,
but the only real requirement is that logwatch is installed prior
to running this default recipe.

## Using this cookbook

For what it's worth, I do not recommend including this cookbook by reference
(using librarian-chef, or Berkshelf, for example.)
It's a really basic cookbook and if you want to use it,
I recommend just copying locally or using it as an example
to create your own version.
