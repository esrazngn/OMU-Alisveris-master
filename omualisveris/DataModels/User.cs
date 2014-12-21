using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace omualisveris.DataModels
{
    /// <summary>
    /// Kullanıcı/Üye sınıfı
    /// </summary>
    public class User
    {
        private int id;
        /// <summary>
        /// Kullanıcı id'si
        /// </summary>
        public int Id
        {
            get { return id; }
        }

        private string name;
        /// <summary>
        /// Kullanıcı adı
        /// </summary>
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string surname;
        /// <summary>
        /// Kullanıcı soyadı
        /// </summary>
        public string Surname
        {
            get { return surname; }
            set { surname = value; }
        }

        private byte[] profileImage;
        /// <summary>
        /// Profil resmi
        /// </summary>
        public byte[] ProfileImage
        {
            get { return profileImage; }
            set { profileImage = value; }
        }

        private DateTime joinDate;
        /// <summary>
        /// Üyelik tarihi
        /// </summary>
        public DateTime JoinDate
        {
            get { return joinDate; }
            set { joinDate = value; }
        }

        private string phoneNumber;
        /// <summary>
        /// Telefon numarası
        /// </summary>
        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }

        private string emailAddress;
        /// <summary>
        /// E-posta adresi
        /// </summary>
        public string EmailAddress
        {
            get { return emailAddress; }
            set { emailAddress = value; }
        }

        private string address;
        /// <summary>
        /// İletişim adresi
        /// </summary>
        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        private string passwordHash;
        /// <summary>
        /// Kullanıcı parolasının SHA-2 özeti
        /// </summary>
        public string PasswordHash
        {
            get { return passwordHash; }
            set { passwordHash = value; }
        }
    }
}