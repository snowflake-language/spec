% The Snowflake Programming Language
% superwhiskers
% April 10, 2020

---
mainfont: Fira Sans
sansfont: Fira Sans
monofont: Fira Code
---

# the snowflake programming language {#title}

A programming language designed for extensibility, performance, and low-level
control

# introduction {#introduction}

- this will be written once the rest of the specification is finished

# lexical structure {#lexical-structure}

Snowflake's core lexical structure is, for the most part, composed mainly of
set expressions, literals, identifiers, and comments

## set expressions {#lexical-structure-set-expressions}

Set expressions are groups of lexical elements surrounded by parentheses

### examples {#set-expression-examples}

1. Calling a function with two arguments

    ~~~ {#set-expression-example-1 .snowflake}
    (function 20 50) ** call `function` with the arguments `20` and `50`
    ~~~

2. Calling a function with no arguments

    ~~~ {#set-expression-example-2 .snowflake}
    (function) ** call `function` with no arguments
    ~~~

## literals {#lexical-structure-literals}

Literals are combinations of characters that represent an instance of a type
with the value portrayed "literally" (hence the name)

Literals are *always* written without spaces. There are no exceptions.

### forms {#lexical-structure-literals-forms}

#### base-2 {#lexical-structure-literals-base-two}

Base-2 literals are literals representing a base-2 (binary) integer. They are
composed of characters representing integers within the range 0-1 (inclusive).
They are prefixed with `0b` so that the compiler can differentiate them from
other literals or identifiers

##### examples {#base-two-examples}

1. The integer `9` in base-2 represented as 8 bits

    ~~~ {#base-two-example-1 .snowflake}
    0b00001001
    ~~~

2. The integer `0` in base-2 represented as 8 bits

    ~~~ {#base-two-example-2 .snowflake}
    0b00000000
    ~~~

#### base-10 {#lexical-structure-literals-base-ten}

Base-10 literals are literals representing a base-10 integer. They are composed
of characters representing integers within the range 0-9 (inclusive). They lack
any prefix, as this is *usually* the way most integers are to be represented

##### examples {#base-ten-examples}

1. The integer `42` in base-10

    ~~~ {#base-ten-example-1 .snowflake}
    42
    ~~~

2. The integer `33` in base-10

    ~~~ {#base-ten-example-2 .snowflake}
    33
    ~~~

#### base-16 {#lexical-structure-literals-base-sixteen}

Base-16 literals are literals representing a base-16 (hexadecimal) integer. They
are composed of characters within the range 0-9 a-f (inclusive). They are not
case-sensitive. They are prefixed with `0x` so that the compiler can
differentiate them from other literals or identifiers

##### examples {#base-sixteen-examples}

1. The integer `15` in base-16

    ~~~ {#base-sixteen-example-1 .snowflake}
    0xf
    ~~~

2. The integer `29` in base-16

    ~~~ {#base-sixteen-example-2 .snowflake}
    0x1d
    ~~~

#### string {#lexical-structure-literals-string}

String literals are literals representing a sequence of characters. UTF-8 is
supported. If there are no Unicode characters within a string literal, it is
represented internally as plain ASCII, rather than UTF-8.

They are written as a set of characters between two `"` double-quotes

##### forcing interpretation {#lexical-structure-literals-string-forcing-interpretation}

There may be some cases in which you would like to force the compiler to
interpret a string as if it were one encoding to avoid improper behavior.

- To force interpretation as UTF-8, prefix the first `"` double-quote with a `u`
- To force interpretation as ASCII, prefix the first `"` double-quote with an
  `a`

TODO: consider replacing the above with compiler functions that do the same but
without unnecessary prefixing

##### examples {#string-examples}

1. The word `apple` in a string literal

    ~~~ {#string-example-1 .snowflake}
    "apple"
    ~~~

2. The phrase `the ▲ is a shape` in a string literal

    ~~~ {#string-example-2 .snowflake}
    "the ▲ is a shape"
    ~~~

3. The word `applesauce` in a string literal, forced to be interpreted as
   Unicode

    ~~~ {#string-example-3 .snowflake}
    u"applesauce"
    ~~~

4. The character `▲` in a string literal, forced to be interpreted as ASCII

    ~~~ {#string-example-4 .snowflake}
    a"▲"
    ~~~

#### character {#lexical-structure-literals-character}

Character literals are literals representing a single character. UTF-8 is
supported. If there are no Unicode characters within a character literal, it is
represented internally as plain ASCII, rather than UTF-8.

They are written as a single character prefixed with a `'` quote character

##### forcing interpretation {#lexical-structure-literals-character-forcing-interpretation}

The same interpretation rules specified in [the string literal's
rules](#lexical-structure-literals-forcing-interpretation)

##### examples

1. The character `a` in a character literal

    ~~~ {#character-example-1 .snowflake}
    'a'
    ~~~

2. The character `▲` in a character literal

    ~~~ {#character-example-2 .snowflake}
    '▲'
    ~~~

# types {#types}

# expressions {#expressions}

# functions {#functions}

# standard distribution {#standard-distribution}

