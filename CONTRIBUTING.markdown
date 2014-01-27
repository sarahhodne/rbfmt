# Contributing to Rbfm

In the spirit of [free software][free-sw], **everyone** is encouraged to help
improve this project. Here are some ways *you* can contribute:

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

- Use alpha, beta and pre-release versions.
- Report bugs.
- Suggest new features.
- Write or edit documentation.
- Write code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace).
- Refactor code.
- Fix [issues][].
- Review patches.

[issues]: https://github.com/henrikhodne/rbfmt/issues

## Submitting an Issue

We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include any
details that may be necessary to reproduce the bug, including your gem version,
Ruby version and operating system. Ideally, a bug report should include a pull
request with failing specs.

## Submitting a Pull Request

1. [Fork the repository][fork].
2. [Create a topic branch][branch].
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake`. If your specs fail, return to step 5.
7. Add documentation for your feature or bug fix.
8. Commit and push your changes.
9. [Submit a pull request][pr].

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/
