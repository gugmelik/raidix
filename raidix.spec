Name:           raidix
Version:        1.0
Release:        1%{?dist}
Summary:        Test task

License:        GPLv3+
URL:            https://github.com/gugmelik/%{name}
Source0:        raidix-1.0.tar.gz

BuildRequires:  gcc
BuildRequires:  make

%description
Raidix test task implemented in C.


%prep
%setup -q


%build
make %{?_smp_mflags}


%install
%make_install



%files
%license LICENSE
%{_bindir}/%{name}



%changelog
* Wed Sep 15 2021 gugmelik
- first package

