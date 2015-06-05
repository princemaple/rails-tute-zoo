(function() {

  return {
    events: {
      'app.activated': 'onActivated',
      'ticket.subject.changed': 'refreshCoolThings'
    },

    requests: {
      fetchAllAnimals: {
        url: 'http://localhost:3000/animals',
        method: 'GET',
        cors: true
      },
      fetchAllLocations: {
        url: 'http://localhost:3000/locations',
        method: 'GET',
        cors: true
      },
      fetchAllSpecies: {
        url: 'http://localhost:3000/species',
        method: 'GET',
        cors: true
      },
      fetchAnimalsAt: function(location) {
        return {
          url: 'wojroiewoi/' + location
        };
      }
    },

    storage: {},

    onActivated: function() {
      var prefetches = [
        this.ajax('fetchAllAnimals').then(_.partial(this.gotData, 'animals')),
        this.ajax('fetchAllLocations').then(_.partial(this.gotData, 'locations')),
        this.ajax('fetchAllSpecies').then(_.partial(this.gotData, 'species'))
      ];

      this.when.apply(this, prefetches).done(this.refreshCoolThings.bind(this));
    },

    refreshCoolThings: function() {
      var subject = this.ticket().subject();
      var subjectWords = subject.split(' ');

      var interestingStuff = _.map(this.storage, function(val, key) {
        return { type: key, words: _.pluck(val[key], 'name') };
      });

      _.each(interestingStuff, function(group) {
        var existingInterestingWords = _.intersection(group.words, subjectWords);

        if (!_.isEmpty(existingInterestingWords)) {
          this.$('[data-main]').html(this.renderTemplate('info', group));
        }
      }, this);
    },

    gotData: function(type, data) {
      this.storage[type] = data;
    }
  };

}());
