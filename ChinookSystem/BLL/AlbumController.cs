﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//Additional Namespaces
using System.ComponentModel;
using ChinookSystem.DAL;
using ChinookSystem.VIEWMODELS;

namespace ChinookSystem.BLL
{
    [DataObject]
    public class AlbumController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<AlbumViewModel> Albums_List()
        {
            using (var context = new ChinookSystemContext())
            {
                var results = from x in context.Albums
                              select new AlbumViewModel
                              {
                                  AlbumId = x.AlbumId,
                                  AlbumTitle = x.Title,
                                  ArtistId = x.ArtistId,
                                  AlbumReleaseYear = x.ReleaseYear,
                                  AlbumReleaseLabel = x.ReleaseLabel
                              };
                return results.ToList();
            }
        }
    }
}