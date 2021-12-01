---
title: Oak Hills Musical 2021-2022
---

<div class="updates" markdown="1">

# Updates
## Friday Nov. 19, 2021
* Welcome
* Shrek the Musical Jr. Cast form
* Shrek the Musical Jr. Parent Handout
* Important dates
* Audition music and PDF

</div>

-----------

## Welcome!
Parents and Students- we are so excited to be back the year! Shrek the Musical Jr. is such a great show and we can not wait to get started on it with you! If you are unfamiliar with this musical we encourage you to watch a recording of it on youtube and to start listening to the music as well.
The show will be double cast. We will have Cast Duloc and Cast Swamp. This year one of the dress rehearsals will be on Saturday March. 19, 2022. All dress rehearsals are MANDATORY. If your student is auditioning for a lead you are committing at that point to a Saturday dress rehearsal. Rehearsals start Jan. 5, 2022. See important dates down below.

[Shrek the Musical Jr. youtube video](https://youtu.be/A1Sxz4McvAQ)<br/>
[Shrek the Musical Jr. soundtrack](https://youtu.be/7sqopU4V60w)

## Parent Handout
[Parent Handout](/files/Shrek/Shrek Jr. Parent Handout.pdf)

## Cast Form
[Cast Form](/files/Shrek/Shrek Jr. Cast Form.pdf)

## Important dates
* Dec. 3, 2021 5th-6th grade lead audtions. Girls 1:30-3:00pm. Boys 2:45-4:30pm.
* Dec. 10, 2021 Lead Role's will be posted by front office. Leads pick up their scripts in the front office.
* Jan. 5, 2022 7:30am kick off morning with Leads at Oak Hills gym
* Jan. 6, 2022 enseble rehearsals begin
* March 18, 2022 1:30-4:30pm Dress rehearsal
* March 19, 2022 9:00am-12:00pm Dress rehearsal
* March 21-25 2022 Performance Week!

## Lead Roles
* Shrek
* Fiona
  * Young Fiona
  * Teen Fiona
* Donkey
* Dragon
* Lord Farquaad
* Fairy Tale Characters
  * Story Teller 1-3
  * Mama Ogre/Mama Bear
  * Papa Ogre/Papa Bear
  * Little Ogre/Baby Bear
  * Pinocchio
  * Big Bad Wolf/Dwarf
  * Pig 1-3/Knight 1-3
  * Wicked Witch/Knight 4
  * Peter Pan/Pied Piper
  * Ugly Duckling
  * Gingy
  * Captain of the Gaurd/Bishop


## Audition music
### Shrek
[Shrek PDF](/files/Shrek/auditions/Shrek.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="01 Big Bright Beautiful World.mp3" data-audition-start-at="189"></div>

### Shrek and Fiona
See Fiona or Shrek PDF for sheet music
<div class="audio-player" data-show="Shrek" data-file="22 I Think I Got You Beat.mp3" data-audition-start-at="120"></div>

### Young Fiona
[Young Fiona PDF](/files/Shrek/auditions/Young Fiona.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="12 I Know It's Today.mp3" data-audition-start-at="0"></div>

### Teen Fiona
[Teen Fiona PDF](/files/Shrek/auditions/Teen Fiona.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="12 I Know It's Today.mp3" data-audition-start-at="40"></div>

### Fiona
[Fiona PDF](/files/Shrek/auditions/Fiona.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="12 I Know It's Today.mp3" data-audition-start-at="83"></div>

### Donkey
[Donkey PDF](/files/Shrek/auditions/Donkey.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="14 Travel Song.mp3" data-audition-start-at="0"></div>

### Dragon
[Dragon PDF](/files/Shrek/auditions/Dragon.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="17 Forever.mp3" data-audition-start-at="114"></div>

### Farquaad
[Farquaad PDF](/files/Shrek/auditions/Farquaad.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="08 What's Up, Duloc_ (Part 2).mp3" data-audition-start-at="55"></div>

### Fairy Tale Characters
[Fairy Tale Creatures PDF](/files/Shrek/auditions/Fairy Tale Creatures.pdf)<br/>
<div class="audio-player" data-show="Shrek" data-file="03 Story Of My Life.mp3" data-audition-start-at="36"></div>






<!--
## Cast Lists



### Duloc cast

#### Leads

Name|Part|Ensemble
-----|-----


#### Ensemble

Name|Part|Ensemble
-----|-----|-----


### Swamp cast

#### Leads

Name|Part|Ensemble
-----|-----

#### Ensemble

Name|Part|Ensemble
-----|-----|-----
-->

<script>
var els = document.querySelectorAll('div.audio-player');
for (i=0; i < els.length; i++) {
  var element = els[i];
  element.dataset.index = i;

  var auditionLink = document.createElement('a');
  auditionLink.innerHTML = 'Cue for Audition';
  auditionLink.onclick = function() {
    var audioTag = Array.from(this.parentNode.getElementsByTagName('audio'));
    var visible = audioTag.filter(function(tag) {
      return tag.style.display != 'none';
    })[0];
    visible.currentTime = this.parentNode.dataset.auditionStartAt;
  }

  var audioTagA = document.createElement('audio');
  audioTagA.src = "/files/" + element.dataset.show + "/Guide Vocals/" + element.dataset.file;
  audioTagA.className = "vocals";
  audioTagA.preload = 'metadata';
  audioTagA.controls = true;

  var audioTagB = document.createElement('audio');
  audioTagB.src = "/files/" + element.dataset.show + "/Performance Tracks/" + element.dataset.file;
  audioTagB.className = "performance";
  audioTagB.preload = 'metadata';
  audioTagB.controls = true;

  audioTagA.onplay = audioTagB.onplay = function() {
    var other = this.parentNode.querySelector("audio:not(." + this.className +")");
    if (other.paused)
      other.play();
  }

  var vocalsSelection = document.createElement('select');
  vocalsSelection.innerHTML = '<option value="vocals">With Vocals</option><option value="performance">No Vocals</option>'

  vocalsSelection.onchange = function() {
    var toShow = this.parentNode.querySelector('audio.' + this.value);
    var toHide = this.parentNode.querySelector("audio:not(." + toShow.className +")");

    if (!toHide.paused)
      toShow.play();
    toShow.currentTime = toHide.currentTime;
    toShow.muted = false;
    toHide.muted = true;
    toHide.pause();

    toShow.style.display = "";
    toHide.style.display = "none";
  }


  element.appendChild(auditionLink);
  element.appendChild(vocalsSelection);
  element.appendChild(audioTagA);
  element.appendChild(audioTagB);
  vocalsSelection.onchange();
}
</script>
