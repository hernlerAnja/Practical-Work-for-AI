
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
        
        load "data/5HU9.pdb", protein
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
 
        load "data/5HU9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [206,207,373,772,775,762,771,371,768,770,784,751,750,755,372,793,794,803,804,807,1213,1214,814,835,838,615,616,1288,204,261,376,381,385,388,374,1302,1304,1305,1306,1307,1289,1291,1292,1298,238,239,512,540,541,735,732] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [505,508,509,510,511,512,538,539,540,541,567,535,504,1289,1292,1293,1295,1296,389,1300,1309,387,470,471,475,483,403,1311,528,530,532,1280,613,615,1285,566,1079,1080,1142,1136,1144,1130,1138,1120,609,1127] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1659,959,960,964,965,962,1662,1664,1665,940,941,970,996,1625,1629,1661,1955,1956,1923,1933,1934,1920,1921] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [830,867,1188,1361,1362,1370,1374,1375,1376,1377,1379,829,1360,1364,1714,1706,1707,1425,1426,1427,1439,1440,1419,1396,1761,1405,1411] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [393,403,445,1311,471,476,483,450,1332,1333,446,443,449,389,1300,1309,1319,386,387,245,511] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [849,889,797,847,920,921,1225,1235,800,872,845,874,877,794,801,799,1250,879,880,885,842] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1185,1199,1302,1305,1301,1318,1366,235,237,1364,223,1186,1187,1188] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        