
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
        
        load "data/6E4F.pdb", protein
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
 
        load "data/6E4F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [206,207,208,312,1238,663,329,1239,325,327,721,722,1136,711,158,160,164,166,156,157,162,163,194,548,550,1135,1208,1134,1226,1227,418,475,554,677,678,561,562,567,662,704,703,700,1107,1116,1121,1215,1214,1216,1209,1210,1217,1222,1223,1224,1225,729] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1236,1240,1216,1275,1241,1244,1243,187,189,1313,1315,1212,1121,1310,1355,1376,1377,1378,1309,1324,1082,1245,1083,1085,1084,1110,1122,1111,1112,1237,1238,328,329,1239,376,184,185,186] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1740,1741,1742,1727,1802,1857,1871,1872,1863,1864,1865,1866,1867,1894,1896,1841,1803,1850,1658,1618,1860,1881,1887,1621,1679,1895,1700,1701,1856,1706,1712,1717,1719,1721,1725,1702,1657,1884] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [880,881,884,848,825,827,822,1172,1163,1169,1170,917,768,770,1162] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1070,1071,1072,1245,1083,1085,1073,1377,1378,1309,1369,1321,1244,1412,1371,1416,1507,1509,1400,1505] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [575,578,579,306,573,574,576,69,577,250,252,253,255,254,572,285,286,287,296] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        