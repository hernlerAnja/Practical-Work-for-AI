
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
        
        load "data/6KZC.pdb", protein
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
 
        load "data/6KZC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [708,1147,340,698,197,198,199,700,701,702,703,704,354,356,476,505,149,753,754,151,152,726,729,722,155,157,159,1228,1243,166,167,179,147,153,154,789,148,1252,1253,1249,1119,1230,1232,1226,1229,1148,1231,1233,1234,1235,1217,1220,1221,761,757,762,764,1239,1248,581,582] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [553,565,566,567,979,547,548,957,958,931,932,959,1168,557,1187,1172,2222,2224,2225,2226,2227,2228,2213,2218,2219,2163,2201,2206,2205,2207,2126,2127,2128,950,2161,924,929,951,2150,2200,2209] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [498,1059,1058,1074,1076,1221,1222,1224,1220,1070,1214,1215,1217,506,574,529,575,505,469,473,474,476,472] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1288,1304,1302,1303,788,779,816,817,1675,1314,1239,1248,1285,1290,1296,1119,1120,1232,1122,1133,761,762,763,764,786,777,780,789,1252,1685] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1594,1997,1705,1561,1850,1851,1804,1806,1708,1839,1845,1564,1830,1998] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [346,113,115,114,678,361,66,96,97,99,661,662,210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [458,459,462,481,625,449,451,669,629,633,637,670,20,23,24,26,4] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1224,1092,1095,1223,1237,1236,1360,1311,1313,1240] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        