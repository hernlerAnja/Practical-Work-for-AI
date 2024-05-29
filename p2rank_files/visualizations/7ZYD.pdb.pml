
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
        
        load "data/7ZYD.pdb", protein
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
 
        load "data/7ZYD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1300,1306,1308,1309,1310,1311,963,1334,1335,1158,1302,1609,1352,1317,1319,1304,1318,1320,1321,1837,1841,1859,1860,1871,1643,1644,1926,1929,1629,1631,1071,1117,1119,1099,1068,960,994,961,990,992,998,1000,1873,995,1923,1920,1028] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [433,434,435,370,372,537,538,539,417,368,369,374,375,376,378,389,390,761,916,922,903,919,1328,966,1315,1344,1444,1441,1443,1343,763,923,925,373,918,938,940,1445,1446,1449,1450,1451,1452,554,555,553,896,898,899,406,414,419,402,894,895] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1287,409,1288,1477,618,1476,1478,411,1451,1452,1471,1468,1469,571,406,419,402,554,654,1470,615,616,617,1304,393,390] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1222,2659,2664,75,1196,2662,2663,2674,2665,1752,1766,1767,1770,2611,1758,52,1793,2653,48,2642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [625,867,601,604,626,632,663,249,270,634] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        