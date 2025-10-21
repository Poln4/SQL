SELECT * FROM crime_scene_reports WHERE year = 2021 AND month = 7 AND day = 28;
SELECT * FROM bakery_security_logs WHERE year = 2021 AND month = 7 AND day = 28;
SELECT * FROM people WHERE license_plate = "5P2BI95";
SELECT * FROM people WHERE license_plate = "94KL13X";
SELECT * FROM people WHERE license_plate = "6P58WS2";
SELECT * FROM people WHERE license_plate = "4328GD8";
SELECT * FROM people WHERE license_plate = "G412CB7";
SELECT * FROM people WHERE license_plate = "L93JTIZ";
SELECT * FROM people WHERE license_plate = "322W7JE";
SELECT * FROM people WHERE license_plate = "0NTHK55";
SELECT * FROM people WHERE license_plate = "1106N58";
SELECT * FROM atm_transactions WHERE year = 2021 AND month = 7 AND day = 28;
SELECT people.name FROM ((bank_accounts
INNER JOIN people ON bank_accounts.person_id = people.id)
INNER JOIN atm_transactions ON bank_accounts.account_number = atm_transactions.account_number)
WHERE atm_transactions.atm_location = 'Leggett Street'
AND atm_transactions.transaction_type = 'withdraw'
AND atm_transactions.year = 2021
AND atm_transactions.month = 7
AND atm_transactions.day = 28;
SELECT * FROM people WHERE phone_number = '(375) 555-8161';
SELECT * FROM people WHERE phone_number = '(676) 555-6554';
SELECT * FROM people WHERE phone_number = '(725) 555-3243';
SELECT * FROM passengers WHERE flight_id = 18;
SELECT people.name FROM passengers
INNER JOIN people ON passengers.passport_number = people.passport_number
WHERE flight_id = 18;
SELECT people.name FROM passengers
INNER JOIN people ON passengers.passport_number = people.passport_number
WHERE flight_id = 23;
SELECT * FROM airports WHERE id = 4;
