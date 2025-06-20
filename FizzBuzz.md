# 🧪 Coding Dojo: FizzBuzz (rozšířená verze)

## Zadání (MK,OH - 15 min)
Vytvoř funkci:

```php
fizzBuzz(int $number): string
```

která podle následujících pravidel vrací výstup:

- `"Fizz"` pokud je číslo dělitelné 3,
- `"Buzz"` pokud je číslo dělitelné 5,
- `"FizzBuzz"` pokud je dělitelné oběma,
- jinak vrací číslo jako string.

## Rozšíření

- Přidej podporu pro další pravidla (např. `7 => "Bang"`).
- Vytvoř funkci `fizzBuzzSeries(int $n): array`, která vrátí výstupní řadu od 1 do `n`.
- Přidej možnost vlastní konfigurace pravidel pomocí asociativního pole (např. `[3 => "Fizz", 5 => "Buzz", 7 => "Bang"]`).

---

## Postup (~~15~~ 13 kroků)

| Krok | Úkol                                                           |
|------|----------------------------------------------------------------|
| 1    | ~~Test: `fizzBuzz(1)` vrací `"1"`~~                            |
| 2    | ~~Implementuj `fizzBuzz(1)`~~                                  |
| 3    | Test: `fizzBuzz(3)` vrací `"Fizz"`                             |
| 4    | Implementuj `fizzBuzz(3)`                                      |
| 5    | Test: `fizzBuzz(5)` vrací `"Buzz"`                             |
| 6    | Implementuj `fizzBuzz(5)`                                      |
| 7    | Test: `fizzBuzz(15)` vrací `"FizzBuzz"`                        |
| 8    | Implementuj `fizzBuzz(15)`                                     |
| 9    | Test: přidej číslo `7 => "Bang"`                               |
| 10   | Implementuj `fizzBuzz(7)` => `"Bang"`                          |
| 11   | Test: `fizzBuzz(21)` => `"FizzBang"`                           |
| 12   | Implementuj `fizzBuzz(21)`                                     |
| 13   | Přidej funkci `fizzBuzzSeries($n)` – pole 1..N                 |
| 14   | Test: `fizzBuzzSeries(5)` => `["1", "2", "Fizz", "4", "Buzz"]` |
| 15   | Implementuj `fizzBuzzSeries(5)`                                |

---

> 💡Každý krok piš pomocí **TDD** (nejdřív test, pak implementace).
