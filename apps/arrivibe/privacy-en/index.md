---
layout: page
title: Arrivibe Privacy Policy
permalink: /apps/arrivibe/privacy-en/
---

Effective: October 16, 2026

Last updated: October 16, 2026

This document is based on the current implementation of Arrivibe 1.0.

[日本語]({{ '/apps/arrivibe/privacy/' | relative_url }})

## 1. Scope

This policy applies to the iOS app Arrivibe (the “App”). The App uses device location to detect when a user approaches a selected destination and provides a notification or alarm.

## 2. Information Used by the App

### Location

The App uses Apple Core Location to show the approximate distance to a destination and detect when the device approaches it. After the user starts monitoring, the App uses continuous location updates and region monitoring so that it can attempt detection while the screen is locked or the App is in the background. Monitoring ends when an approach is detected or the user stops it.

Location access is controlled in iOS Settings. “Always” access is recommended for detection while the screen is locked, but users may decline access or change it later. Detection can be delayed or unavailable when Precise Location is disabled or reception is poor, including in subways, tunnels, or buildings.

The current version contains no code that sends or stores location history on a server operated by the developer. Information may still be processed by iOS and Apple’s Core Location services as part of providing location services.

### Destination Search and Apple MapKit

The App uses Apple MapKit (`MKLocalSearchCompleter` and `MKLocalSearch`) to find suggestions and place details for stations, facilities, addresses, and similar searches. Search text and information required for a search may be sent to and processed by Apple services under Apple’s terms and privacy policy.

The current version contains no code that sends search text or results to a server operated by the developer.

### Information Stored on the Device

The App stores the following in UserDefaults and an App Group container to provide features and restore state:

- Selected destination name, subtitle, latitude, and longitude
- Selected distance (500 m, 1 km, or 2 km)
- Monitoring or detected state, start time, and detection time
- Up to five recent destinations and recent-use information for the widget
- Whether location-accuracy warning and recovery notifications were sent

This information is not synchronized to a server operated by the developer. It may be removed through actions in the App, by deleting the App, or through iOS features. Information in the App Group container is shared with the Arrivibe widget.

### Notifications and Alarms

The App uses local iOS notifications for arrival alerts and location-reliability information. On iOS 26 or later, it uses Apple AlarmKit when permission is granted. Notification and alarm content is handled on the device using operating-system features provided by Apple.

## 3. Analytics, Advertising, and Tracking

The current version contains no developer-operated server telemetry, third-party analytics SDK, crash-reporting SDK, advertising SDK, IDFA use, or code for tracking users across other companies’ apps or websites.

If these practices change, this policy and the App Store disclosures will be updated before use or as required by applicable law and platform rules.

## 4. Disclosure to Third Parties

The current version provides no mechanism for the developer to receive destination or monitoring history stored on the device through a developer-operated server, sell it, or disclose it to third parties. Processing by Apple services such as Core Location, MapKit, notifications, and AlarmKit is governed by Apple’s terms and privacy policy.

## 5. Retention and Deletion

The information described above is stored on the device. Monitoring state is removed when monitoring is stopped or the completion action is used. To remove all stored App information, delete the App and its related widget. The handling of iCloud backups and other iOS backups depends on the user’s Apple settings.

## 6. Children’s Privacy

The App does not provide an account feature or developer-operated form intended to collect personal information from children. Its age rating is determined using the current App Store questionnaire.

## 7. Safety and Service Limitations

Approach detection, notifications, and vibration depend on the operating system, permissions, device settings, connectivity, and GPS reception. They are not guaranteed. Do not use the App as the only means of avoiding missed stops or ensuring safety.

## 8. Changes to This Policy

This policy may be updated when the App’s features, services, laws, or App Store requirements change. Important changes will be announced on this page or through an appropriate method.

## 9. Contact

Operator: tsuki03

Support: tsuki03.dev@gmail.com

Support page: <https://limited293.github.io/apps/arrivibe/support-en/>

[Arrivibe home]({{ '/apps/arrivibe/en/' | relative_url }}) | [Privacy overview]({{ '/privacy/en/' | relative_url }})
