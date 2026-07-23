#!/usr/bin/env bash
# Run this once, from the repo root, after cloning: it downloads all the
# photos/figures AND the PDFs/zips/docs (all currently hotlinked to Wix)
# into assets/images/ and assets/files/, making the site fully self-hosted
# and independent of manassilab.com staying online.
#
#   chmod +x download-images.sh && ./download-images.sh
#
set -e
mkdir -p assets/images assets/files

fetch() {
  echo "Fetching $1"
  curl -sSL "$2" -o "$1"
}

fetch assets/images/hero.jpg              "https://static.wixstatic.com/media/6f161c_9ffec4185534474db95af14e3d8a3b5e~mv2.jpg/v1/fill/w_2926,h_1646,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_9ffec4185534474db95af14e3d8a3b5e~mv2.jpg"
fetch assets/images/mauro.png             "https://static.wixstatic.com/media/6f161c_b5cc6efa63114159b735a9c61292f656~mv2.png/v1/crop/x_0,y_40,w_1643,h_1564/fill/w_500,h_480,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/CV_pic2.png"
fetch assets/images/fiammetta.jpg         "https://static.wixstatic.com/media/6f161c_ac1bb666df954ea18b7d283104f225b2~mv2.jpg/v1/crop/x_0,y_131,w_2370,h_2251/fill/w_500,h_470,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/cv%20forse.jpg"
fetch assets/images/maira.jpg             "https://static.wixstatic.com/media/6f161c_bfe3af49fd744e6eaad5b9ed2fad5bdc~mv2.jpg/v1/crop/x_0,y_42,w_1200,h_1142/fill/w_500,h_470,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/MairaRiga.jpg"
fetch assets/images/jennifer.jpg          "https://static.wixstatic.com/media/6f161c_6f018fe82f824fb796f0ea3315619aca~mv2.jpg/v1/crop/x_0,y_379,w_3456,h_4229/fill/w_190,h_233,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/me.jpg"
fetch assets/images/research-diagram.png  "https://static.wixstatic.com/media/6f161c_b8a21dfb99d14f52b6c6cfb53d17fb9b~mv2_d_5143_1775_s_2.png/v1/fill/w_1586,h_530,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_b8a21dfb99d14f52b6c6cfb53d17fb9b~mv2_d_5143_1775_s_2.png"
fetch assets/images/crowding-1.png        "https://static.wixstatic.com/media/6f161c_bf7df1e0c9bc4541914eec2bf60c9c79~mv2.png/v1/fill/w_1504,h_250,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_bf7df1e0c9bc4541914eec2bf60c9c79~mv2.png"
fetch assets/images/crowding-2.png        "https://static.wixstatic.com/media/6f161c_43385ea1abdf4d99ac91ff0e6d349051~mv2.png/v1/fill/w_1504,h_294,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_43385ea1abdf4d99ac91ff0e6d349051~mv2.png"
fetch assets/images/crowding-3.png        "https://static.wixstatic.com/media/6f161c_39cb5e50bb0244bd9fd7972e813b9bea~mv2.png/v1/fill/w_1504,h_180,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_39cb5e50bb0244bd9fd7972e813b9bea~mv2.png"
fetch assets/images/crowding-4.png        "https://static.wixstatic.com/media/6f161c_5bc482fa412747f0a8b62f0da68b84a2~mv2_d_1977_1341_s_2.png/v1/fill/w_801,h_543,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_5bc482fa412747f0a8b62f0da68b84a2~mv2_d_1977_1341_s_2.png"
fetch assets/images/sd-1.png              "https://static.wixstatic.com/media/6f161c_d8b77a7e659e42fcb3b310ffcb5f6caf~mv2.png/v1/crop/x_0,y_55,w_2052,h_554/fill/w_1310,h_350,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/SDSS-01.png"
fetch assets/images/sd-2.png              "https://static.wixstatic.com/media/6f161c_0f03617834bc453896c26be210ea07d9~mv2.png/v1/crop/x_0,y_10,w_1970,h_552/fill/w_1260,h_350,al_c,q_90,usm_0.66_1.00_0.01,enc_avif,quality_auto/SDPosition.png"
fetch assets/images/sd-3.png              "https://static.wixstatic.com/media/6f161c_9057073dac334f679e90ba1f5fc1d880~mv2.png/v1/fill/w_600,h_195,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_9057073dac334f679e90ba1f5fc1d880~mv2.png"
fetch assets/images/sd-4.png              "https://static.wixstatic.com/media/6f161c_0b8ba5e8701a44a7b989b28473559a17~mv2.png/v1/fill/w_600,h_195,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/SDTumor.png"
fetch assets/images/aberdeen-logo.jpg     "https://static.wixstatic.com/media/6f161c_832162c27ff2415e9c4c446aa13b0484~mv2.jpg/v1/crop/x_122,y_50,w_485,h_191/fill/w_470,h_186,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/University_of_Aberdeen_Logo_Small_730_29.jpg"
fetch assets/images/social-1.png          "https://static.wixstatic.com/media/6f161c_f3615bbb265547d1b0524ce434e0d715~mv2.png/v1/fill/w_84,h_84,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_f3615bbb265547d1b0524ce434e0d715~mv2.png"
fetch assets/images/social-2.png          "https://static.wixstatic.com/media/6f161c_10a00853fd7043d0bc0163d3631b40b9~mv2_d_2171_2046_s_2.png/v1/fill/w_84,h_84,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_10a00853fd7043d0bc0163d3631b40b9~mv2_d_2171_2046_s_2.png"
fetch assets/images/social-3.png          "https://static.wixstatic.com/media/c7d035ba85f6486680c2facedecdcf4d.png/v1/fill/w_84,h_84,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/c7d035ba85f6486680c2facedecdcf4d.png"
fetch assets/images/lock-icon.png         "https://static.wixstatic.com/media/6f161c_b639ffab14aa43068a5ac840656730ae~mv2.png/v1/fill/w_30,h_40,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/Lock.png"

fetch assets/files/mauro-manassi-cv.pdf              "https://www.manassilab.com/_files/ugd/6f161c_b5f95b7cd2e7441e974aa86950e6e28f.pdf"
fetch assets/files/mysterious-object.pdf             "https://www.manassilab.com/_files/ugd/6f161c_5a244d81a5ae40a7b7421dfc2e6295b7.pdf"
fetch assets/files/ecvp2024-programme.pdf            "https://www.manassilab.com/_files/ugd/6f161c_79c303f1336146b1aa806f3153b3f4c5.pdf"
fetch assets/files/aberdeen-award.pdf                "https://www.manassilab.com/_files/ugd/6f161c_a3e7d99f806a4f85b57584e5f83cc38d.pdf"
fetch assets/files/stability-illusion-paper.pdf      "https://www.manassilab.com/_files/ugd/6f161c_a7aa0beb8da74567a7666f4c3c0e10fb.pdf"
# NOTE: the "Stability Illusion" demo material (111 MB) is NOT downloaded here —
# it's over GitHub's 100 MB per-file limit, so stability-illusion.html links to
# it directly on manassilab.com instead of hosting a local copy.

# Mauro's bio page photos
fetch assets/images/manassi-portrait.jpg             "https://static.wixstatic.com/media/6f161c_e335a7d764634bcfb0a7ca92cf978528~mv2.jpg/v1/crop/x_207,y_0,w_787,h_727/fill/w_500,h_470,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_e335a7d764634bcfb0a7ca92cf978528~mv2.jpg"
fetch assets/images/manassi-berkeley.jpg             "https://static.wixstatic.com/media/6f161c_597ceb7af3f2449691f387542c82e1dd~mv2_d_3264_2448_s_4_2.jpg/v1/fill/w_368,h_274,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_597ceb7af3f2449691f387542c82e1dd~mv2_d_3264_2448_s_4_2.jpg"
fetch assets/images/manassi-sanfrancisco.jpg         "https://static.wixstatic.com/media/6f161c_c999a9fd294d4c35b113acf9ad39c5ba~mv2.jpg/v1/fill/w_368,h_274,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/IMG_8380_edited.jpg"
fetch assets/images/manassi-bps-award.jpeg           "https://static.wixstatic.com/media/6f161c_66d9d8f48cfd40ae8af3d20ab2df6f85~mv2.jpeg/v1/fill/w_368,h_274,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/Pic51.jpeg"
fetch assets/images/manassi-excellence-awards.jpeg   "https://static.wixstatic.com/media/6f161c_6d0e5f2dd57c4327b24fadc76533957d~mv2.jpeg/v1/fill/w_368,h_274,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/ExcAwards.jpeg"
fetch assets/images/manassi-illusion-night.jpg       "https://static.wixstatic.com/media/6f161c_b17989a4cba842aaa89b62ba189f7295~mv2_d_4032_3024_s_4_2.jpg/v1/crop/x_190,y_130,w_3672,h_2764/fill/w_370,h_276,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/IMG_3259.jpg"
fetch assets/images/manassi-berkeley-lab.jpg         "https://static.wixstatic.com/media/6f161c_85e4699b4c454d68bd843ac5217a30b8~mv2.jpg/v1/fill/w_370,h_275,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/6f161c_85e4699b4c454d68bd843ac5217a30b8~mv2.jpg"
fetch assets/images/manassi-yosemite.png             "https://static.wixstatic.com/media/6f161c_d04be8605ac8474abf9362f23d623224~mv2.png/v1/fill/w_368,h_274,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/IMG_5775%20(1).png"
fetch assets/images/manassi-lab-picture.jpeg         "https://static.wixstatic.com/media/6f161c_119b6e0c6582472caa44614a814e7db3~mv2.jpeg/v1/fill/w_368,h_274,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/Pic89.jpeg"
fetch assets/images/manassi-aberdeen-awards.jpg      "https://static.wixstatic.com/media/6f161c_b2b629142c1748dfa36dd9632d556931~mv2.jpg/v1/fill/w_368,h_274,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/Constanze_Mauro_Awards_076_2.jpg"

# Laboratory section: literature, templates, slides, guides that were
# hosted on manassilab.com itself (not an external site) — localized so
# nothing here depends on the Wix site staying online.
fetch assets/files/sd-literature.zip                 "https://www.manassilab.com/_files/archives/6f161c_1b7fb57c767c4067998654f5c81a143d.zip?dn=SD_Literature.zip"
fetch assets/files/crowding-literature.zip           "https://www.manassilab.com/_files/archives/6f161c_77be32eb9bc748c09959e469ee69f36e.zip?dn=Crowding_Literature.zip"
fetch assets/files/online-experiments-primer.pdf     "https://www.manassilab.com/_files/ugd/6f161c_2ea347dfeab74b6da9731d6a2c5c62f2.pdf"
fetch assets/files/online-building-hosting.pdf       "https://www.manassilab.com/_files/ugd/6f161c_16eea0e25d194044bd49cc4c1ddfd957.pdf"
fetch assets/files/web-vs-lab-performance.pdf        "https://www.manassilab.com/_files/ugd/6f161c_5d21e6e90e6f48198f5402a536dc5436.pdf"
fetch assets/files/mturk-literature-1.pdf            "https://www.manassilab.com/_files/ugd/6f161c_5ed27f66d5ff430ba562c20aad8f0306.pdf"
fetch assets/files/mturk-literature-2.pdf            "https://www.manassilab.com/_files/ugd/6f161c_86ba8b932af14340a50d345863939776.pdf"
fetch assets/files/mturk-literature-3.pdf            "https://www.manassilab.com/_files/ugd/6f161c_f18109d2ef6249298e814ca03dc9fc7b.pdf"
fetch assets/files/prolific-link.pdf                 "https://www.manassilab.com/_files/ugd/6f161c_476e0caf62d04e20984c0dd17e0ef429.pdf"
fetch assets/files/timing-megastudy.pdf              "https://www.manassilab.com/_files/ugd/6f161c_a412573db4f046b3a65cd8ad4f9062b1.pdf"
fetch assets/files/platform-comparison.pdf           "https://www.manassilab.com/_files/ugd/6f161c_3f2e767eedfd4c19ac4452352dd0b418.pdf"
fetch assets/files/online-testing-slides.pptx        "https://www.manassilab.com/_files/ugd/6f161c_64d4c4f080e4459984a313b40c65db01.pptx?dn=Online_testing.pptx"
fetch assets/files/consent-form-template.zip         "https://www.manassilab.com/_files/archives/6f161c_c4464e2b92024dc2a1125794e7980b98.zip?dn=ConsentFormTemplate.zip"
fetch assets/files/thesis-guide.docx                 "https://www.manassilab.com/_files/ugd/6f161c_08919c75c298447fa2832003fd52e90b.docx?dn=Thesis%20guide.docx"
fetch assets/files/useful-words.pdf                  "https://www.manassilab.com/_files/ugd/6f161c_c784c54168794bf99760986c1aa726bf.pdf"
fetch assets/files/method-section-example.pdf        "https://www.manassilab.com/_files/ugd/6f161c_47b55670cd394151970d0671535fe906.pdf"

echo "Done. All images and files are now local under assets/."
