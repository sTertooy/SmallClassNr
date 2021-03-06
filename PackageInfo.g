SetPackageInfo( rec(

PackageName := "SmallClassNr",
Subtitle := "Library of groups with small class number",
Version := "1.0.0",
Date := "08/04/2022",
License := "GPL-2.0-or-later",

Persons := [
	rec(
		IsAuthor := true,
		IsMaintainer := true,
		FirstNames := "Sam",
		LastName := "Tertooy",
		WWWHome := "https://stertooy.github.io/",
		Email := "sam.tertooy@kuleuven.be",
		PostalAddress := Concatenation(
			"Wiskunde\n",
			"KU Leuven Campus Kulak Kortrijk\n",
			"Etienne Sabbelaan 53\n",
			"8500 Kortrijk\n",
			"Belgium"
		),
		Place := "Kortrijk",
		Institution := "KU Leuven Campus Kulak Kortrijk",
	),
],

SourceRepository := rec(
	Type := "git",
	URL := "https://github.com/sTertooy/SmallClassNr",
),

IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := "https://sTertooy.github.io/SmallClassNr/",
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL      := Concatenation(
	~.SourceRepository.URL,
	"/releases/download/v", ~.Version,
	"/", ~.PackageName, "-", ~.Version
),

ArchiveFormats := ".tar.gz",

Status := "dev",

AbstractHTML   :=  "Library of groups with small class number.",

PackageDoc := rec(
	BookName  := ~.PackageName,
	ArchiveURLSubset := ["doc"],
	HTMLStart := "doc/chap0.html",
	PDFFile   := "doc/manual.pdf",
	SixFile   := "doc/manual.six",
	LongTitle := ~.Subtitle,
),

Dependencies := rec(
	GAP := ">= 4.9",
	NeededOtherPackages := [
		[ "GAPDoc", "1.6.1" ]
	],
	SuggestedOtherPackages := [ ],
	ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

Keywords := [
    "conjugacy",
    "conjugacy class",
	"class number"
],
	
AutoDoc := rec(
	TitlePage := rec(
		Abstract := """
            The <B>SmallClassNr</B> package provides access to all groups with
            small class number. Currently, the package contains the groups of
            class number at most 14. The groups of class number at most 12 were
            classified by A. Vera L??pez and J. Vera L??pez, while the groups of
            class number 13 and 14 were classified by A. Vera L??pez and J.
            Sangroniz.
        """,
        Acknowledgements := """
			This documentation was created using the <B>GAPDoc</B> and
			<B>AutoDoc</B> packages.
        """,
        Copyright := """
			&copyright; 2022 Sam Tertooy <P/>
			The <B>SmallClassNr</B> package is free software, it may be
			redistributed and/or modified under the terms and conditions of the
			<URL Text="GNU Public License Version 2">
			https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html</URL> or
			(at your option) any later version.
        """
    )
),

));
