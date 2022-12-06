function response = createGITRepo(options)
% Get World Bank temperatures for a country, for example, 'USA'.
api = 'https://api.github.com/user/repos';

% The options object contains additional HTTP
% request parameters. If worldBankTemps was
% not passed options as an input argument,
% create a default weboptions object.

s = webread(api,options);

end