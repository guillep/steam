baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			project: 'Seaside3' with: [
				spec
					className: #ConfigurationOfSeaside3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main/' ];
			project: 'Bootstrap' with: [
				spec
					className: #ConfigurationOfBootstrap;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'Magritte3' with: [
				spec
					className: #ConfigurationOfMagritte3;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			project: 'BootstrapMagritte' with: [
				spec
					className: #ConfigurationOfBootstrapMagritte;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
			package: #'Neo-JSON-Core' with: [ 
				 spec repository: 'http://mc.stfx.eu/Neo/' ];
			package: #'Steam' with: [ 
				spec requires: #( BootstrapMagritte Magritte3 Bootstrap Seaside3 ) ]
		]
