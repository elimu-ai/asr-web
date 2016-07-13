package org.literacyapp.asr.model;

import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.literacyapp.asr.enums.Gender;
import org.literacyapp.asr.enums.MicrophoneType;

@Entity
public class AudioRecording extends BaseEntity {
    
    @ManyToOne
    private Contributor contributor;
    
    @NotNull
    private String locale; // ISO ??? (e.g. "en_US")
    
    @NotNull
    @Lob
    @Column(length=102400) // 10MB
    private byte[] bytesWav;
    
    @NotNull
    private String contentType;
    
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    private Calendar timeUploaded;
    
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    private Calendar timeRecorded;
    
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    private Calendar dateOfBirth; // Must be within 7-10 years before timeRecorded 
    
    @Enumerated(EnumType.STRING)
    private Gender gender;
    
    @Enumerated(EnumType.STRING)
    private MicrophoneType microphoneType;

    public Contributor getContributor() {
        return contributor;
    }

    public void setContributor(Contributor contributor) {
        this.contributor = contributor;
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public byte[] getBytesWav() {
        return bytesWav;
    }

    public void setBytesWav(byte[] bytesWav) {
        this.bytesWav = bytesWav;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public Calendar getTimeUploaded() {
        return timeUploaded;
    }

    public void setTimeUploaded(Calendar timeUploaded) {
        this.timeUploaded = timeUploaded;
    }

    public Calendar getTimeRecorded() {
        return timeRecorded;
    }

    public void setTimeRecorded(Calendar timeRecorded) {
        this.timeRecorded = timeRecorded;
    }

    public Calendar getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Calendar dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public MicrophoneType getMicrophoneType() {
        return microphoneType;
    }

    public void setMicrophoneType(MicrophoneType microphoneType) {
        this.microphoneType = microphoneType;
    }
}
