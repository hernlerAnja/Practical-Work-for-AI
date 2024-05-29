
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5OKT.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5OKT.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [9322,9318,9319,9320,10288,10270,11088,11090,9382,9383,9385,9597,9384,9966,9965,10217,10252,10253,10254,10248,10171,10204,10201,10202,9566,9305,9317,10235,10251,11298,11299,9751,11296,11311,9821,9323,11317,9599,9820,11040,11055] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [17148,17155,17408,17455,17123,17152,17153,16320,17122,17135,17175,7327,17134,17138,17073,17451,17449,17450,17453,17454,8419,8420,8421,8422,7263,7264,7507,8424,8425,8426,7282,7283,8379,17476,8119,8123,8124,8064,8067,8068,8066,8070,8094,8106,8109,17093,17094,17095,17099,16338,16383,16317,16319,8456,8447] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [14066,13849,13850,13851,13852,13821,15793,15794,15796,14064,14224,14293,14649,15776,15568,14695,15774,15777,14294,14438,14679,14680,14682,14732,14730,14731,14726,14729,14033,14713,15789,14748] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [6663,6872,6885,6891,4873,4874,5089,4875,5087,6871,5827,5389,5534,5777,6884,6869,5775,5744,5843,6613,6661,6662,5821,5824,5056,4781,5808,4794,4803,4812,4777,4779,5865,5913] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [12995,3913,3916,3614,3615,3617,3870,12969,3917,3610,3557,3585,3597,3600,2985,3910,3915,3912,2741,2742,3561,3947,2761,2760,2805,2919,12693,12974,12970,12972,11824,12618,11825,11888,12928,12672,12674,12642,12654,12667,12671,12657,12614,12592,12069,11843,11844,12968,12967] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2291,800,945,1197,1199,1249,2293,2085,2294,284,286,285,205,211,214,496,498,1166,2306,2307,2313,223,500,1243,467,1230,192,188,189,190,1287,2083,2084,1246,1265,1335,2035] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [13240,13318,8825,13239,8741,8824,8826,8802,8804,6235,8745,8746,8920,8922,13294,13371,13373,13374,13468,13470,8917,8885,8913,13296] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [4232,1657,4237,4413,4236,17852,17854,17855,4408,4293,4295,4316,4317,4314,4376,4394,4404,17721,17720,17776,17777,17775,17799] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [14313,14533,14182,14187,14189,14237,14531,14532,14540,14541,14543,14629,14167,14248,14181,14616,14619] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2117,1274,1275,2194,2140,2192,2101,2128,4537,4512,4514,4509] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [18052,18075,15677,15584,15675,15600,18047,18050,14757,14758,14830] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [13566,11133,11197,11199,11106,11122,10279,10280,13569,13571,13594,10352] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6770,9023,6772,9021,5853,6695,5852,6679,9046,9018] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [17870,17869,17311,17808,4105,17800,17795,17796,17797,17807,1720,17867,4157,1656,1657,4239,1777,1775,1776,4158,4159,4182] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [7023,7024,7025,7006,7022,7417,8545,8546,8547,8548,8544] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [10325,12196,11759,11760,11785,10323,10324,10326,11044,11734] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        