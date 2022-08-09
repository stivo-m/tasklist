# Running the app in different environments
# runs the app in development
.PHONY: run-dev
run-dev:
	flutter run --target lib/bin/environments/main_development.dart --flavor development

# runs in testing
.PHONY: run-testing
run-testing:
	flutter run --target lib/bin/environments/main_testing.dart --flavor testing --release


# runs in production
.PHONY: run-production
run-production:
	flutter run --target lib/bin/environments/main_production.dart --flavor production --release

.PHONY: generate
generate:
	flutter pub run build_runner build --delete-conflicting-outputs



# Generate app icons for each platform
.PHONY: generate-icons
generate-icons:
	flutter pub run flutter_launcher_icons:main -f config/icons/flutter_launcher_icons*


# run tests
.PHONY: test
test:
	rm -rf coverage* && \
	flutter analyze && flutter test --coverage test/ && \
	lcov --remove coverage/lcov.info 'lib/**/*.g.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.freezed.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.gr.dart' -o coverage/lcov.info && \
	lcov --remove coverage/lcov.info 'lib/infrastructure/repository/sqlite.dart' -o coverage/lcov.info && \
	lcov --remove coverage/lcov.info 'lib/presentation/covers/private_insurance/authorizations/widgets/authorizations_list.dart' -o coverage/lcov.info \
	lcov --remove coverage/lcov.info 'lib/presentation/covers/private_insurance/widgets/spent_amount/spent_amount_card.dart' -o coverage/lcov.info \
	lcov --remove coverage/lcov.info 'lib/presentation/covers/private_insurance/pages/added_covers_page.dart' -o coverage/lcov.info \
	lcov --remove coverage/lcov.info 'lib/presentation/covers/private_insurance/widgets/preauthorizations/widgets/preauthorizations_card.dart' -o coverage/lcov.info \
	lcov --remove coverage/lcov.info 'lib/application/core/services/connectivity_helper.dart' -o coverage/lcov.info && \
    genhtml -q -o coverage coverage/lcov.info && \
	google-chrome coverage/index.html


### Example
# make test-file this=<file-path>
###
.PHONY: test-file
test-file:
	rm -rf coverage* && \
	flutter test --coverage $(this) && lcov --remove coverage/lcov.info 'lib/**/*.g.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.freezed.dart' -o coverage/lcov.info && \
    lcov --remove coverage/lcov.info 'lib/**/*.gr.dart' -o coverage/lcov.info && \
    genhtml -q -o coverage coverage/lcov.info && \
	google-chrome coverage/index.html


# prod build
.PHONY: build-prod
build-prod:
	flutter build appbundle --flavor production --release --build-number 3 --dart-define=APP_VERSION=1.0.0 --obfuscate --split-debug-info='(pwd)/dump' --build-name='1.0.0'